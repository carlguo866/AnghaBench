
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {int read_max; } ;
typedef TYPE_1__ libgdbr_t ;


 int free (char*) ;
 int handle_qSupported (TYPE_1__*) ;
 char* malloc (int) ;
 int send_msg (TYPE_1__*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int _server_handle_qSupported(libgdbr_t *g) {
 int ret;
 char *buf;
 if (!(buf = malloc (128))) {
  return -1;
 }
 snprintf (buf, 127, "PacketSize=%x;QStartNoAckMode+;qXfer:exec-file:read+",
    (ut32) (g->read_max - 1));
 if ((ret = handle_qSupported (g)) < 0) {
  free (buf);
  return -1;
 }
 ret = send_msg (g, buf);
 free (buf);
 return ret;
}
