
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_max_priority()
{
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 4294967295 0 100 1\r\n");
    mustsend(fd, "a\r\n");
    ckresp(fd, "INSERTED 1\r\n");
}
