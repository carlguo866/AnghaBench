
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct p9_trans_fd {scalar_t__ rd; scalar_t__ wr; } ;
struct p9_client {scalar_t__ status; struct p9_trans_fd* trans; } ;
typedef int __poll_t ;


 scalar_t__ Connected ;
 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EREMOTEIO ;
 int vfs_poll (scalar_t__,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t
p9_fd_poll(struct p9_client *client, struct poll_table_struct *pt, int *err)
{
 __poll_t ret;
 struct p9_trans_fd *ts = ((void*)0);

 if (client && client->status == Connected)
  ts = client->trans;

 if (!ts) {
  if (err)
   *err = -EREMOTEIO;
  return EPOLLERR;
 }

 ret = vfs_poll(ts->rd, pt);
 if (ts->rd != ts->wr)
  ret = (ret & ~EPOLLOUT) | (vfs_poll(ts->wr, pt) & ~EPOLLIN);
 return ret;
}
