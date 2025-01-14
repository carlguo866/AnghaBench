
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int conn_socket; } ;
typedef scalar_t__ ssize_t ;


 int errno ;
 int fail (struct connection const*,char*) ;
 int log_err (int,char*) ;
 int log_errx (int,char*) ;
 scalar_t__ read (int ,char*,size_t) ;
 char* strerror (int ) ;
 scalar_t__ timed_out () ;

__attribute__((used)) static void
pdu_read(const struct connection *conn, char *data, size_t len)
{
 ssize_t ret;

 while (len > 0) {
  ret = read(conn->conn_socket, data, len);
  if (ret < 0) {
   if (timed_out()) {
    fail(conn, "Login Phase timeout");
    log_errx(1, "exiting due to timeout");
   }
   fail(conn, strerror(errno));
   log_err(1, "read");
  } else if (ret == 0) {
   fail(conn, "connection lost");
   log_errx(1, "read: connection lost");
  }
  len -= ret;
  data += ret;
 }
}
