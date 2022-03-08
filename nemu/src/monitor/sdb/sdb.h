#ifndef __SDB_H__
#define __SDB_H__

#include <common.h>

#define WP_REMAIN 1
#define WP_CHANGED 2
#define WP_END 0

typedef struct watchpoint {
	int NO;
	struct watchpoint *next;
	
  /* TODO: Add more members if necessary */
	char *expr;        //expr to be read
	word_t last_result;
} WP;

word_t expr(char *e, bool *success);
WP* new_wp();
bool delete_wp(char *args);
word_t check_wp(int num,word_t *result, int *no);
#endif
