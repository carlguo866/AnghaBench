
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct TYPE_2__ {int out_mutex; int irq; int data; int ring; } ;
struct sock_mapping {TYPE_1__ active; } ;
struct msghdr {int msg_flags; int msg_iter; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 size_t INT_MAX ;
 scalar_t__ IS_ERR (struct sock_mapping*) ;
 int MSG_CONFIRM ;
 int MSG_DONTROUTE ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_OOB ;
 int PTR_ERR (struct sock_mapping*) ;
 int PVCALLS_FRONT_MAX_SPIN ;
 int __write_ring (int ,int *,int *,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int notify_remote_via_irq (int ) ;
 struct sock_mapping* pvcalls_enter_sock (struct socket*) ;
 int pvcalls_exit_sock (struct socket*) ;
 int pvcalls_front_write_todo (struct sock_mapping*) ;

int pvcalls_front_sendmsg(struct socket *sock, struct msghdr *msg,
     size_t len)
{
 struct sock_mapping *map;
 int sent, tot_sent = 0;
 int count = 0, flags;

 flags = msg->msg_flags;
 if (flags & (MSG_CONFIRM|MSG_DONTROUTE|MSG_EOR|MSG_OOB))
  return -EOPNOTSUPP;

 map = pvcalls_enter_sock(sock);
 if (IS_ERR(map))
  return PTR_ERR(map);

 mutex_lock(&map->active.out_mutex);
 if ((flags & MSG_DONTWAIT) && !pvcalls_front_write_todo(map)) {
  mutex_unlock(&map->active.out_mutex);
  pvcalls_exit_sock(sock);
  return -EAGAIN;
 }
 if (len > INT_MAX)
  len = INT_MAX;

again:
 count++;
 sent = __write_ring(map->active.ring,
       &map->active.data, &msg->msg_iter,
       len);
 if (sent > 0) {
  len -= sent;
  tot_sent += sent;
  notify_remote_via_irq(map->active.irq);
 }
 if (sent >= 0 && len > 0 && count < PVCALLS_FRONT_MAX_SPIN)
  goto again;
 if (sent < 0)
  tot_sent = sent;

 mutex_unlock(&map->active.out_mutex);
 pvcalls_exit_sock(sock);
 return tot_sent;
}
