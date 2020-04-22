#include <stdio.h>
#define SIZE 20
int main(){
  int n;
  int i;
  int a;
  printf("¿Cuántos fondos quieres hacer en la última serie? \n>");
  scanf("%d", &n);
  a = 0;
  printf("Serie: Fondos Totales \n");
  for (i = 1; i <= n; ++i){
    a += i;
    printf("%d:  %d\n", i, a);
  }
  return 0;
}
