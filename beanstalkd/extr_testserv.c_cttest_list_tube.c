
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERVER () ;
 int ckresp (int,char*) ;
 int ckrespsub (int,char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_list_tube()
{
    int port = SERVER();
    int fd0 = mustdiallocal(port);

    mustsend(fd0, "watch w\r\n");
    ckresp(fd0, "WATCHING 2\r\n");

    mustsend(fd0, "use u\r\n");
    ckresp(fd0, "USING u\r\n");

    mustsend(fd0, "list-tubes\r\n");
    ckrespsub(fd0, "OK ");
    ckresp(fd0,
           "---\n"
           "- default\n"
           "- w\n"
           "- u\n\r\n");

    mustsend(fd0, "list-tube-used\r\n");
    ckresp(fd0, "USING u\r\n");

    mustsend(fd0, "list-tubes-watched\r\n");
    ckrespsub(fd0, "OK ");
    ckresp(fd0,
           "---\n"
           "- default\n"
           "- w\n\r\n");

    mustsend(fd0, "ignore default\r\n");
    ckresp(fd0, "WATCHING 1\r\n");

    mustsend(fd0, "list-tubes-watched\r\n");
    ckrespsub(fd0, "OK ");
    ckresp(fd0,
           "---\n"
           "- w\n\r\n");

    mustsend(fd0, "ignore w\r\n");
    ckresp(fd0, "NOT_IGNORED\r\n");
}
