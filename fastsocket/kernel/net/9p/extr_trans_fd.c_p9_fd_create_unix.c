
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct p9_trans_fd {int * conn; } ;
struct p9_client {scalar_t__ trans; } ;
struct TYPE_2__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (int *) ;
 int KERN_ERR ;
 int P9_EPRINTK (int ,char*,char const*,...) ;
 int PF_UNIX ;
 int PTR_ERR (int *) ;
 int SOCK_STREAM ;
 scalar_t__ UNIX_PATH_MAX ;
 int kfree (struct p9_trans_fd*) ;
 int * p9_conn_create (struct p9_client*) ;
 int p9_socket_open (struct p9_client*,struct socket*) ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;

__attribute__((used)) static int
p9_fd_create_unix(struct p9_client *client, const char *addr, char *args)
{
 int err;
 struct socket *csocket;
 struct sockaddr_un sun_server;
 struct p9_trans_fd *p = ((void*)0);

 csocket = ((void*)0);

 if (strlen(addr) > UNIX_PATH_MAX) {
  P9_EPRINTK(KERN_ERR, "p9_trans_unix: address too long: %s\n",
   addr);
  err = -ENAMETOOLONG;
  goto error;
 }

 sun_server.sun_family = PF_UNIX;
 strcpy(sun_server.sun_path, addr);
 sock_create_kern(PF_UNIX, SOCK_STREAM, 0, &csocket);
 err = csocket->ops->connect(csocket, (struct sockaddr *)&sun_server,
   sizeof(struct sockaddr_un) - 1, 0);
 if (err < 0) {
  P9_EPRINTK(KERN_ERR,
   "p9_trans_unix: problem connecting socket: %s: %d\n",
   addr, err);
  goto error;
 }

 err = p9_socket_open(client, csocket);
 if (err < 0)
  goto error;

 p = (struct p9_trans_fd *) client->trans;
 p->conn = p9_conn_create(client);
 if (IS_ERR(p->conn)) {
  err = PTR_ERR(p->conn);
  p->conn = ((void*)0);
  goto error;
 }

 return 0;

error:
 if (csocket)
  sock_release(csocket);

 kfree(p);
 return err;
}
