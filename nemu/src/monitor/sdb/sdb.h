#ifndef __SDB_H__
#define __SDB_H__

#include <common.h>

typedef struct watchpoint {
	int NO;
	struct watchpoint *next;
	
  /* TODO: Add more members if necessary */
	char *expr;        //expr to be read
} WP;

word_t expr(char *e, bool *success);
WP* new_wp();
bool delete_wp(char *args);
#endif
