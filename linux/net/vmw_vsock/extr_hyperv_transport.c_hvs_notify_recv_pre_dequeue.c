
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport_recv_notify_data {int dummy; } ;
struct vsock_sock {int dummy; } ;



__attribute__((used)) static
int hvs_notify_recv_pre_dequeue(struct vsock_sock *vsk, size_t target,
    struct vsock_transport_recv_notify_data *d)
{
 return 0;
}
