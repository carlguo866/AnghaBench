
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ connection ;


 int C_ERR ;
 int anetKeepAlive (int *,int,int) ;

int connKeepAlive(connection *conn, int interval) {
    if (conn->fd == -1) return C_ERR;
    return anetKeepAlive(((void*)0), conn->fd, interval);
}
