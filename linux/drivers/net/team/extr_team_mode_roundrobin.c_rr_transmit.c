
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sent_packets; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_1__* rr_priv (struct team*) ;
 scalar_t__ team_dev_queue_xmit (struct team*,struct team_port*,struct sk_buff*) ;
 struct team_port* team_get_first_port_txable_rcu (struct team*,struct team_port*) ;
 struct team_port* team_get_port_by_index_rcu (struct team*,int) ;
 int team_num_to_port_index (struct team*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool rr_transmit(struct team *team, struct sk_buff *skb)
{
 struct team_port *port;
 int port_index;

 port_index = team_num_to_port_index(team,
         rr_priv(team)->sent_packets++);
 port = team_get_port_by_index_rcu(team, port_index);
 if (unlikely(!port))
  goto drop;
 port = team_get_first_port_txable_rcu(team, port);
 if (unlikely(!port))
  goto drop;
 if (team_dev_queue_xmit(team, port, skb))
  return 0;
 return 1;

drop:
 dev_kfree_skb_any(skb);
 return 0;
}
