
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smem_partition_header {int dummy; } ;
struct TYPE_4__ {unsigned int item_count; size_t* cacheline; size_t global_cacheline; int hwlock; struct smem_partition_header* global_partition; struct smem_partition_header** partitions; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 void* ERR_PTR (int) ;
 int HWSPINLOCK_TIMEOUT ;
 unsigned int SMEM_HOST_COUNT ;
 scalar_t__ WARN_ON (int) ;
 TYPE_1__* __smem ;
 int hwspin_lock_timeout_irqsave (int ,int ,unsigned long*) ;
 int hwspin_unlock_irqrestore (int ,unsigned long*) ;
 void* qcom_smem_get_global (TYPE_1__*,unsigned int,size_t*) ;
 void* qcom_smem_get_private (TYPE_1__*,struct smem_partition_header*,size_t,unsigned int,size_t*) ;

void *qcom_smem_get(unsigned host, unsigned item, size_t *size)
{
 struct smem_partition_header *phdr;
 unsigned long flags;
 size_t cacheln;
 int ret;
 void *ptr = ERR_PTR(-EPROBE_DEFER);

 if (!__smem)
  return ptr;

 if (WARN_ON(item >= __smem->item_count))
  return ERR_PTR(-EINVAL);

 ret = hwspin_lock_timeout_irqsave(__smem->hwlock,
       HWSPINLOCK_TIMEOUT,
       &flags);
 if (ret)
  return ERR_PTR(ret);

 if (host < SMEM_HOST_COUNT && __smem->partitions[host]) {
  phdr = __smem->partitions[host];
  cacheln = __smem->cacheline[host];
  ptr = qcom_smem_get_private(__smem, phdr, cacheln, item, size);
 } else if (__smem->global_partition) {
  phdr = __smem->global_partition;
  cacheln = __smem->global_cacheline;
  ptr = qcom_smem_get_private(__smem, phdr, cacheln, item, size);
 } else {
  ptr = qcom_smem_get_global(__smem, item, size);
 }

 hwspin_unlock_irqrestore(__smem->hwlock, &flags);

 return ptr;

}
