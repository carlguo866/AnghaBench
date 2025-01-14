
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct dn_scp {unsigned char services_rem; scalar_t__ snd_window; scalar_t__ flowrem_oth; scalar_t__ flowrem_dat; } ;


 int MSG_OOB ;
 unsigned char NSP_FC_MASK ;
 unsigned char NSP_FC_NONE ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;

__attribute__((used)) static inline int dn_queue_too_long(struct dn_scp *scp, struct sk_buff_head *queue, int flags)
{
 unsigned char fctype = scp->services_rem & NSP_FC_MASK;
 if (skb_queue_len(queue) >= scp->snd_window)
  return 1;
 if (fctype != NSP_FC_NONE) {
  if (flags & MSG_OOB) {
   if (scp->flowrem_oth == 0)
    return 1;
  } else {
   if (scp->flowrem_dat == 0)
    return 1;
  }
 }
 return 0;
}
