
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int is_valid; } ;
struct TYPE_11__ {int data_len; char* data; TYPE_1__ stop_reason; } ;
typedef TYPE_2__ libgdbr_t ;
struct TYPE_12__ {int valid; } ;
typedef int (* PrintfCallback ) (char*,char*) ;


 char* calloc (size_t,int) ;
 int free (char*) ;
 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 scalar_t__ isxdigit (char) ;
 int pack_hex (char const*,int,char*) ;
 int read_packet (TYPE_2__*,int) ;
 TYPE_5__ reg_cache ;
 int send_ack (TYPE_2__*) ;
 int send_msg (TYPE_2__*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int strncmp (char*,char*,int) ;
 int unpack_hex (char*,int,char*) ;

int gdbr_send_qRcmd(libgdbr_t *g, const char *cmd, PrintfCallback cb_printf) {
 int ret = -1;
 char *buf;
 size_t len;

 if (!g || !cmd) {
  return -1;
 }
 len = strlen (cmd) * 2 + 8;
 if (!(buf = calloc (len, sizeof (char)))) {
  return -1;
 }
 strcpy (buf, "qRcmd,");

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 g->stop_reason.is_valid = 0;
 reg_cache.valid = 0;
 pack_hex (cmd, strlen (cmd), buf + 6);
 if ((ret = send_msg (g, buf)) < 0) {
  goto end;
 }
 if ((ret = read_packet (g, 0)) < 0) {
  goto end;
 }
 while (1) {
  if ((ret = send_ack (g)) < 0) {
   goto end;
  }
  if (g->data_len == 0) {
   ret = -1;
   goto end;
  }
  if (g->data_len == 3 && g->data[0] == 'E'
       && isxdigit (g->data[1]) && isxdigit (g->data[2])) {
   ret = -1;
   goto end;
  }
  if (!strncmp (g->data, "OK", 2)) {
   break;
  }
  if (g->data[0] == 'O' && g->data_len % 2 == 1) {

   unpack_hex (g->data + 1, g->data_len - 1, g->data + 1);
   g->data[g->data_len - 1] = '\0';
   cb_printf ("%s", g->data + 1);
  }
  if ((ret = read_packet (g, 0)) < 0) {
   goto end;
  }
 }

 ret = 0;
end:
 if (buf) {
  free (buf);
 }
 gdbr_lock_leave (g);
 return ret;
}
