
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct ib_pkey_cache {int table_len; TYPE_1__* entry; } ;
struct TYPE_4__ {int lock; struct ib_pkey_cache** pkey_cache; } ;
struct ib_device {TYPE_2__ cache; } ;
struct TYPE_3__ {scalar_t__ pkey; scalar_t__ index; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ end_port (struct ib_device*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ start_port (struct ib_device*) ;

int ib_find_exact_cached_pkey(struct ib_device *device,
         u8 port_num,
         u16 pkey,
         u16 *index)
{
 struct ib_pkey_cache *cache;
 unsigned long flags;
 int i;
 int ret = -ENOENT;

 if (port_num < start_port(device) || port_num > end_port(device))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);

 cache = device->cache.pkey_cache[port_num - start_port(device)];

 *index = -1;

 for (i = 0; i < cache->table_len; ++i)
  if (cache->entry[i].pkey == pkey) {
   *index = cache->entry[i].index;
   ret = 0;
   break;
  }

 read_unlock_irqrestore(&device->cache.lock, flags);

 return ret;
}
