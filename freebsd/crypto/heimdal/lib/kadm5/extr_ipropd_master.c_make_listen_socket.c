
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int one ;
typedef int krb5_socket_t ;
typedef int krb5_context ;
typedef int addr ;


 int AF_INET ;
 int IPROP_PORT ;
 char const* IPROP_SERVICE ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int ,struct sockaddr*,int) ;
 int errno ;
 scalar_t__ htons (long) ;
 int krb5_err (int ,int,int ,char*) ;
 int krb5_errx (int ,int,char*,char const*) ;
 void* krb5_getportbyname (int ,char const*,char*,int ) ;
 scalar_t__ listen (int ,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ rk_IS_BAD_SOCKET (int ) ;
 int rk_SOCK_ERRNO ;
 int setsockopt (int ,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static krb5_socket_t
make_listen_socket (krb5_context context, const char *port_str)
{
    krb5_socket_t fd;
    int one = 1;
    struct sockaddr_in addr;

    fd = socket (AF_INET, SOCK_STREAM, 0);
    if (rk_IS_BAD_SOCKET(fd))
 krb5_err (context, 1, rk_SOCK_ERRNO, "socket AF_INET");
    setsockopt (fd, SOL_SOCKET, SO_REUSEADDR, (void *)&one, sizeof(one));
    memset (&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;

    if (port_str) {
 addr.sin_port = krb5_getportbyname (context,
           port_str, "tcp",
           0);
 if (addr.sin_port == 0) {
     char *ptr;
     long port;

     port = strtol (port_str, &ptr, 10);
     if (port == 0 && ptr == port_str)
  krb5_errx (context, 1, "bad port `%s'", port_str);
     addr.sin_port = htons(port);
 }
    } else {
 addr.sin_port = krb5_getportbyname (context, IPROP_SERVICE,
         "tcp", IPROP_PORT);
    }
    if(bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
 krb5_err (context, 1, errno, "bind");
    if (listen(fd, SOMAXCONN) < 0)
 krb5_err (context, 1, errno, "listen");
    return fd;
}
