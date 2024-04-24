#include <stdio.h>
#include <string.h>
#include <ctype.h>

int exit(int error_code);
int read(int fd, char *buf, size_t count);
int write(int fd,const char *buf, size_t count);
int open(const char *filename, int flags, int mode); //return el new file descriptor

char * print_cpuid();

int main(int argc, char const *argv[])
{
    print_cpuid();
    return 0;
}