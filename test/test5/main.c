#include <stdio.h>
#include <stdlib.h>

int main() {
  printf("Hello world!\n");
  printf("Goodbye!\n");
  char *memory = malloc(128);
  memory = NULL; // oops!
}
