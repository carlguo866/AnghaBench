
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipmi_smi {int seq_lock; TYPE_2__* seq_table; } ;
struct TYPE_6__ {short channel; } ;
struct TYPE_4__ {unsigned char cmd; unsigned char netfn; } ;
struct ipmi_recv_msg {TYPE_3__ addr; TYPE_1__ msg; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_5__ {scalar_t__ inuse; struct ipmi_recv_msg* recv_msg; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned char IPMI_IPMB_NUM_SEQ ;
 int IPMI_WATCH_MASK_CHECK_MESSAGES ;
 scalar_t__ ipmi_addr_equal (struct ipmi_addr*,TYPE_3__*) ;
 int smi_remove_watch (struct ipmi_smi*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int intf_find_seq(struct ipmi_smi *intf,
    unsigned char seq,
    short channel,
    unsigned char cmd,
    unsigned char netfn,
    struct ipmi_addr *addr,
    struct ipmi_recv_msg **recv_msg)
{
 int rv = -ENODEV;
 unsigned long flags;

 if (seq >= IPMI_IPMB_NUM_SEQ)
  return -EINVAL;

 spin_lock_irqsave(&intf->seq_lock, flags);
 if (intf->seq_table[seq].inuse) {
  struct ipmi_recv_msg *msg = intf->seq_table[seq].recv_msg;

  if ((msg->addr.channel == channel) && (msg->msg.cmd == cmd)
    && (msg->msg.netfn == netfn)
    && (ipmi_addr_equal(addr, &msg->addr))) {
   *recv_msg = msg;
   intf->seq_table[seq].inuse = 0;
   smi_remove_watch(intf, IPMI_WATCH_MASK_CHECK_MESSAGES);
   rv = 0;
  }
 }
 spin_unlock_irqrestore(&intf->seq_lock, flags);

 return rv;
}
