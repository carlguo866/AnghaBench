
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atalk_iface {TYPE_2__* dev; } ;
struct atalk_addr {int s_node; int s_net; } ;
struct TYPE_3__ {int s_node; int s_net; } ;
struct aarp_entry {int expires_at; int status; struct aarp_entry* next; TYPE_2__* dev; TYPE_1__ target_addr; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int AARP_HASH_SIZE ;
 unsigned int AARP_RETRANSMIT_LIMIT ;
 scalar_t__ ARPHRD_LOCALTLK ;
 scalar_t__ ARPHRD_PPP ;
 int ATIF_PROBE ;
 int ATIF_PROBE_FAIL ;
 int EADDRINUSE ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 struct aarp_entry* aarp_alloc () ;
 int aarp_lock ;
 int aarp_send_probe (TYPE_2__*,struct atalk_addr*) ;
 int jiffies ;
 int msleep (int) ;
 struct aarp_entry** proxies ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int aarp_proxy_probe_network(struct atalk_iface *atif, struct atalk_addr *sa)
{
 int hash, retval = -EPROTONOSUPPORT;
 struct aarp_entry *entry;
 unsigned int count;





 if (atif->dev->type == ARPHRD_LOCALTLK ||
     atif->dev->type == ARPHRD_PPP)
  goto out;





 entry = aarp_alloc();
 retval = -ENOMEM;
 if (!entry)
  goto out;

 entry->expires_at = -1;
 entry->status = ATIF_PROBE;
 entry->target_addr.s_node = sa->s_node;
 entry->target_addr.s_net = sa->s_net;
 entry->dev = atif->dev;

 write_lock_bh(&aarp_lock);

 hash = sa->s_node % (AARP_HASH_SIZE - 1);
 entry->next = proxies[hash];
 proxies[hash] = entry;

 for (count = 0; count < AARP_RETRANSMIT_LIMIT; count++) {
  aarp_send_probe(atif->dev, sa);


  write_unlock_bh(&aarp_lock);
  msleep(100);
  write_lock_bh(&aarp_lock);

  if (entry->status & ATIF_PROBE_FAIL)
   break;
 }

 if (entry->status & ATIF_PROBE_FAIL) {
  entry->expires_at = jiffies - 1;
  retval = -EADDRINUSE;
 } else {
  entry->status &= ~ATIF_PROBE;
  retval = 1;
 }

 write_unlock_bh(&aarp_lock);
out:
 return retval;
}
