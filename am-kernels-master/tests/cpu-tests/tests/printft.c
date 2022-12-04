#include "trap.h"

int main() {
	printf("%s", "Hello world!\n");

	printf("%d + %d = %d\n", 1, 1, 2);

	printf("%d-%d-%d %d:%d:%d\n", 1900, 0, 0, 0, 0, 0);
	printf("%d-%d-%d %d:%d:%d\n", 1901, 2, 0, 0, 0, 0);
	printf("%d-%d-%d %d:%d:%d\n", 1900, 3, 0, 0, 0, 0);

  return 0;
}