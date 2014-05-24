#include <stdio.h>

int main() {
  int sum = 0;
  int value = 1;
  int pre = 1;
  int temp;

  while(value <= 4000000) {
    temp = value;
    value += pre;
    pre = temp;

    if(value % 2 == 0) {
      sum += value;
    }
  }

  printf("Sum: %d\n", sum);
}
