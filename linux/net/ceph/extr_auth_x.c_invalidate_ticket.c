
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_x_ticket_handler {int have_key; } ;
struct ceph_auth_client {int dummy; } ;


 int IS_ERR (struct ceph_x_ticket_handler*) ;
 struct ceph_x_ticket_handler* get_ticket_handler (struct ceph_auth_client*,int) ;

__attribute__((used)) static void invalidate_ticket(struct ceph_auth_client *ac, int peer_type)
{
 struct ceph_x_ticket_handler *th;

 th = get_ticket_handler(ac, peer_type);
 if (!IS_ERR(th))
  th->have_key = 0;
}
