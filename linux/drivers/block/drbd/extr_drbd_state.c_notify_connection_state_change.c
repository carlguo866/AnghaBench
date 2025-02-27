
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct drbd_connection_state_change {int * peer_role; int * cstate; struct drbd_connection* connection; } ;
struct drbd_connection {int dummy; } ;
struct connection_info {int conn_role; int conn_connection_state; } ;
typedef enum drbd_notification_type { ____Placeholder_drbd_notification_type } drbd_notification_type ;


 size_t NEW ;
 int notify_connection_state (struct sk_buff*,unsigned int,struct drbd_connection*,struct connection_info*,int) ;

void notify_connection_state_change(struct sk_buff *skb,
        unsigned int seq,
        struct drbd_connection_state_change *connection_state_change,
        enum drbd_notification_type type)
{
 struct drbd_connection *connection = connection_state_change->connection;
 struct connection_info connection_info = {
  .conn_connection_state = connection_state_change->cstate[NEW],
  .conn_role = connection_state_change->peer_role[NEW],
 };

 notify_connection_state(skb, seq, connection, &connection_info, type);
}
