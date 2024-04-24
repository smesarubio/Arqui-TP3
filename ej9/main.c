#include <stdio.h>
#include <string.h>
#include <ctype.h>

int exit(int error_code);
int read(int fd, char *buf, size_t count);
int write(int fd,const char *buf, size_t count);
int open(const char *filename, int flags, int mode); //return el new file descriptor



int main(int argc, char const *argv[])
{
    char *filename = "archivo.txt";
    int archivo_fd = open(filename, 0, 0);
    printf("nuevo fd : %d\n", archivo_fd);
    char buff[200]={0};
    char tempbuff[200] = {0};
    read(archivo_fd, buff, 200);
    int j = 0;
    int line = 1;
    char linestr[5] = {0};
    for (int i = 0; buff[i] != 0; i++)
    {
        tempbuff[j++] = buff[i];
        if(buff[i]=='\n'){
            tempbuff[--j] = ' ';
            tempbuff[++j] = 0;
            write(1, tempbuff, strlen(tempbuff));
            sprintf(linestr, " %d\n", line++);
            write(1, linestr, 4);
            j = 0;
        }
    }


    return 0;
}