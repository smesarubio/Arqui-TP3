#include <stdio.h>

int fibonacci(int n);

int main(int argc, char const *argv[])
{
    int fibo = fibonacci(7);
    printf("%d\n", fibo);
    return 0;
}

int fibonacci(int n){
    if(n < 2){
        return n;
    }
    return fibonacci(n - 2) + fibonacci(n - 1);
}
