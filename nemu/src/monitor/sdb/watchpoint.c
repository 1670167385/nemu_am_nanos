#include "sdb.h"

#define NR_WP 32

static WP wp_pool[NR_WP] = {};
static WP *head = NULL, *free_ = NULL;

void init_wp_pool() {
  int i;
  for (i = 0; i < NR_WP; i ++) {
    wp_pool[i].NO = i;
    wp_pool[i].next = (i == NR_WP - 1 ? NULL : &wp_pool[i + 1]);
  }

  head = NULL;
  free_ = wp_pool;
}

WP* new_wp()
{
	if(free_ == NULL){
		Log("No enough free wp");
		assert(0);
	}
	WP *tmp = free_;
	free_ = free_->next;
	tmp->next = head;
	head = tmp;
	head->NO = (head->next)? head->next->NO + 1 : 0;
	return tmp; 
}

void free_wp(WP *wp)
{
	WP *p = head;
	if(head == wp)
		head = wp->next;
	else
	{
		while(p->next != wp)
		{
			p->NO--;
			p = p->next;
		}
		p->next = wp->next;
	}
	wp->next = free_;
	free_ = wp;
}

bool delete_wp(char *args)
{
	int no;
	sscanf(args, "%d", &no);
	WP *p = head;
	while(p)
	{
		if(p->NO == no)
		{
			free_wp(p);
			return true;
		}
		p = p->next;
	}
	return false;
}

word_t check_wp(bool pr_info)
{
	WP *p = head;
	while(p){
		bool sucs = true;
		word_t result = expr(p->expr, &sucs);
		if(!pr_info && result != p->last_result)
			return p->NO;
		else if(pr_info)
			printf("NO:%d\t %d\n", p->NO, result);
	}
	return -1;
}
