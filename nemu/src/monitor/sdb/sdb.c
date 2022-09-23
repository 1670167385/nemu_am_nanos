#include <isa.h>
#include <cpu/cpu.h>
#include <readline/readline.h>
#include <readline/history.h>
#include <memory/vaddr.h>
#include "sdb.h"

static int is_batch_mode = false;

void init_regex();
void init_wp_pool();
static int cmd_c(char *args);
static int cmd_q(char *args);
static int cmd_si(char *args);
static int cmd_si(char *args);
static int cmd_info(char *args);
static int cmd_x(char *args);
static int cmd_p(char *args);
static int cmd_w(char *args);
static int cmd_d(char *args);
static int cmd_help(char *args);


static struct {
  const char *name;
  const char *description;
  int (*handler) (char *);
} cmd_table [] = {
  { "help", "Display informations about all supported commands", cmd_help },
  { "c", "Continue the execution of the program", cmd_c },
  { "q", "Exit NEMU", cmd_q },

  /* TODO: Add more commands */
  
  { "si","Execute the program for N step ,then pause it ( default N = 1" ,cmd_si},
  { "info", "print status of regs/watchpoint", cmd_info},
  { "x", "print the value of a block of memory", cmd_x},
  { "p", "compute the expression", cmd_p},
  { "w", "pause the program when the value of EXPR change", cmd_w},
  { "d", "delete NO.N watchopoint", cmd_d}
};
/* Read from stdin */
static char* rl_gets() {
  static char *line_read = NULL;

  if (line_read) {
    free(line_read);
    line_read = NULL;
  }

  line_read = readline("(nemu) ");

  if (line_read && *line_read) {
    add_history(line_read);
  }

  return line_read;
}

#define NR_CMD ARRLEN(cmd_table)

static int cmd_c(char *args) {
  cpu_exec(-1);
  return 0;
}

static int cmd_q(char *args) {
  return -1;
}

static int cmd_si(char *args) {
	int exec_step;
	if(sscanf(args,"%d",&exec_step) == 1  &&  exec_step > 0)
		cpu_exec(exec_step);
	else
		printf("Invalid argument!\n");
	return 0;
}

static int cmd_info(char *args) {
	if(strcmp(args,"r")==0){
		isa_reg_display();
	}
	else if(strcmp(args,"w")==0){
		int i = 0;
		word_t result;
		int state = WP_REMAIN, no;
		while(true){
			state = check_wp(i++, &result, &no);//2's is NULL, means don't need the result
			if(state == WP_END)	break;
			printf("NO:%d\t %d\n", no, result);
		}
	}
	else{
		printf("Invalid argument!\n");
	}
	return 0;
}

static int cmd_x(char *args) {
    int N, addr;
    word_t val;
    bool sucs = true;
    for(N = 0; args[N] != ' '; N++);
    addr = expr(args + N + 1, &sucs);
    sscanf(args,"%d", &N);
    for(int i = 0; i < N; i++){
        if(i % 4 == 0) printf("0x%08x:\t",addr + (i * 4));
        val = vaddr_read(addr + (i * 4), 4);
        printf("0x%04x\t0x%04x\t", val>>16, val % 0x10000);
        if(i % 4 == 3 || i + 1 == N) printf("\n");
    }
	return 0;
}

static int cmd_p(char *args) {
	bool sucs = true;
	word_t ans = expr(args, &sucs);
	if(sucs)
		printf("The ans is %d\n", ans);
	else
		printf("Pattern Wrong!\n");
	return 0;
}

static int cmd_w(char *args) {
	bool sucs = true;
	expr(args, &sucs);
    if(sucs)
	{
		WP *point = new_wp();
		point->expr = malloc((strlen(args) + 1) * sizeof(char));
		memcpy(point->expr, args, (strlen(args) + 1) * sizeof(char));
		*(point->expr + strlen(args) + 1) = 0;
		printf("watchpoint has been built successfully!\n");
	}
	else
		printf("Pattern Wrong!\n"); 
	return 0;
}

static int cmd_d(char *args) {
	bool success = delete_wp(args);
	if(!success) printf("No such watchpoint!\n");
	return 0;
}

static int cmd_help(char *args) {
  /* extract the first argument */
  char *arg = strtok(NULL, " ");
  int i;

  if (arg == NULL) {
    /* no argument given */
    for (i = 0; i < NR_CMD; i ++) {
      printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
    }
  }
  else {
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(arg, cmd_table[i].name) == 0) {
        printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        return 0;
      }
    }
    printf("Unknown command '%s'\n", arg);
  }
  return 0;
}

void sdb_set_batch_mode() {
  is_batch_mode = true;
}

void sdb_mainloop() {
  if (is_batch_mode) {
    cmd_c(NULL);
    return;
  }
  /* str = (nemu) stdin*/
  for (char *str; (str = rl_gets()) != NULL; ) {
    char *str_end = str + strlen(str);

    /* extract the first token as the command */
    char *cmd = strtok(str, " ");
    if (cmd == NULL) { continue; }
	

    /* treat the remaining string as the arguments,
     * which may need further parsing
     */
    char *args = cmd + strlen(cmd) + 1;
    if (args >= str_end) {
      args = NULL;
    }


#ifdef CONFIG_DEVICE
    extern void sdl_clear_event_queue();
    sdl_clear_event_queue();
#endif

    int i;
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(cmd, cmd_table[i].name) == 0) {
        if (cmd_table[i].handler(args) < 0) { return; }
        break;
      }
    }

    if (i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
  }
}

void init_sdb() {
  /* Compile the regular expressions. */
  init_regex();

  /* Initialize the watchpoint pool. */
  init_wp_pool();
}


