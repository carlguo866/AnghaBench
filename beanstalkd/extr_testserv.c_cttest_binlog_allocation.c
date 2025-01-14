
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use; int filesize; int wantsync; scalar_t__ syncrate; int dir; } ;
struct TYPE_4__ {TYPE_1__ wal; } ;


 int SERVER () ;
 int ckresp (int,char*) ;
 int ctdir () ;
 char* fmtalloc (char*,int) ;
 int free (char*) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;
 int size ;
 TYPE_2__ srv ;

void
cttest_binlog_allocation()
{
    int i = 0;

    size = 601;
    srv.wal.dir = ctdir();
    srv.wal.use = 1;
    srv.wal.filesize = size;
    srv.wal.syncrate = 0;
    srv.wal.wantsync = 1;

    int port = SERVER();
    int fd = mustdiallocal(port);
    for (i = 1; i <= 96; i++) {
        char *exp = fmtalloc("INSERTED %d\r\n", i);
        mustsend(fd, "put 0 0 120 22\r\n");
        mustsend(fd, "job payload xxxxxxxxxx\r\n");
        ckresp(fd, exp);
        free(exp);
    }
    for (i = 1; i <= 96; i++) {
        char *exp = fmtalloc("delete %d\r\n", i);
        mustsend(fd, exp);
        ckresp(fd, "DELETED\r\n");
        free(exp);
    }
}
