#include <stdio.h>

int main() {
  int largest_prime = 0;
  long long max = 600851475143;
  int attempt = 2;

  while(attempt <= max) {
    if(max % attempt == 0) {
      if(attempt > largest_prime) {
	largest_prime = attempt;
      }
      max /= attempt;
    }
    else {
      attempt++;
    }
  }
   
  printf("Largest prime: %d\n", largest_prime); 
}
