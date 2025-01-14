
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct ct_iter_state* private; } ;
struct TYPE_4__ {scalar_t__ htable_size; TYPE_1__* hash; } ;
struct net {TYPE_2__ ct; } ;
struct hlist_nulls_node {int next; } ;
struct ct_iter_state {scalar_t__ bucket; } ;
struct TYPE_3__ {int first; } ;


 scalar_t__ get_nulls_value (struct hlist_nulls_node*) ;
 scalar_t__ is_a_nulls (struct hlist_nulls_node*) ;
 scalar_t__ likely (int) ;
 struct hlist_nulls_node* rcu_dereference (int ) ;
 struct net* seq_file_net (struct seq_file*) ;

__attribute__((used)) static struct hlist_nulls_node *ct_get_next(struct seq_file *seq,
          struct hlist_nulls_node *head)
{
 struct net *net = seq_file_net(seq);
 struct ct_iter_state *st = seq->private;

 head = rcu_dereference(head->next);
 while (is_a_nulls(head)) {
  if (likely(get_nulls_value(head) == st->bucket)) {
   if (++st->bucket >= net->ct.htable_size)
    return ((void*)0);
  }
  head = rcu_dereference(net->ct.hash[st->bucket].first);
 }
 return head;
}
