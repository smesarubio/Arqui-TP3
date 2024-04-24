//suma.c 
#include <stdio.h>
 
int suma(int a, int b) { 
  int resultado; 
  resultado = a + b; 
  return resultado; 
}

int main(int argc, char const *argv[])
{
    printf("%d\n", suma(3, 4));
    return 0;
}
