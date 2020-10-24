#include <stdio.h>
#include <math.h>
#include <stdlib.h>
double check(double x){ //Aquí es donde se debería escribir la función a analizar.
  //double result = pow(log(x), 100) - pow(x, 0.01);
  double result = pow(log(x), 100) - pow(x, 0.01);
  return (double) result;
}
double bolzano(double x1, double x2, double tolerance){
  double y1, y2, c, absolute;
  y1 = check(x1);
  y2 = check(x2);
  if ((y1*y2) < 0){
    c = (x1 + x2) * 0.5;
    absolute = fabs(check(c));
    if (absolute <= tolerance){
      return c;
    }
    else{
      if (y1 * check(c) < 0){
        bolzano(x1, c, tolerance);
      }
      else{
        bolzano(c, x2, tolerance);
      }
    }
  }
  else{
    printf("There are no roots within that interval!\n");
    return 0;
  }

}
int main(){
  double x1, x2;
  double tolerance;
  scanf("%lf %lf %lf", &x1, &x2, &tolerance);
  double root = bolzano(x1, x2, tolerance);
  printf("%f", root);
  printf("\n");
  return 0;
}
