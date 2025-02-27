
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start; } ;
struct nd_namespace_io {int size; int addr; int bb; TYPE_1__ res; } ;
struct TYPE_6__ {int parent; } ;
struct nd_namespace_common {TYPE_2__ dev; } ;
typedef int sector_t ;
typedef int resource_size_t ;


 unsigned int ALIGN (size_t,int) ;
 int EFAULT ;
 int EIO ;
 scalar_t__ IS_ALIGNED (size_t,int) ;
 unsigned long NVDIMM_IO_ATOMIC ;
 int READ ;
 int arch_invalidate_pmem (int,size_t) ;
 int badblocks_clear (int *,int,long) ;
 int dev_WARN_ONCE (TYPE_2__*,int,char*) ;
 int is_bad_pmem (int *,int,unsigned int) ;
 int memcpy_flushcache (int,void*,size_t) ;
 scalar_t__ memcpy_mcsafe (void*,int,size_t) ;
 int might_sleep () ;
 long nvdimm_clear_poison (TYPE_2__*,int,size_t) ;
 int nvdimm_flush (int ,int *) ;
 struct nd_namespace_io* to_nd_namespace_io (TYPE_2__*) ;
 int to_nd_region (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nsio_rw_bytes(struct nd_namespace_common *ndns,
  resource_size_t offset, void *buf, size_t size, int rw,
  unsigned long flags)
{
 struct nd_namespace_io *nsio = to_nd_namespace_io(&ndns->dev);
 unsigned int sz_align = ALIGN(size + (offset & (512 - 1)), 512);
 sector_t sector = offset >> 9;
 int rc = 0, ret = 0;

 if (unlikely(!size))
  return 0;

 if (unlikely(offset + size > nsio->size)) {
  dev_WARN_ONCE(&ndns->dev, 1, "request out of range\n");
  return -EFAULT;
 }

 if (rw == READ) {
  if (unlikely(is_bad_pmem(&nsio->bb, sector, sz_align)))
   return -EIO;
  if (memcpy_mcsafe(buf, nsio->addr + offset, size) != 0)
   return -EIO;
  return 0;
 }

 if (unlikely(is_bad_pmem(&nsio->bb, sector, sz_align))) {
  if (IS_ALIGNED(offset, 512) && IS_ALIGNED(size, 512)
    && !(flags & NVDIMM_IO_ATOMIC)) {
   long cleared;

   might_sleep();
   cleared = nvdimm_clear_poison(&ndns->dev,
     nsio->res.start + offset, size);
   if (cleared < size)
    rc = -EIO;
   if (cleared > 0 && cleared / 512) {
    cleared /= 512;
    badblocks_clear(&nsio->bb, sector, cleared);
   }
   arch_invalidate_pmem(nsio->addr + offset, size);
  } else
   rc = -EIO;
 }

 memcpy_flushcache(nsio->addr + offset, buf, size);
 ret = nvdimm_flush(to_nd_region(ndns->dev.parent), ((void*)0));
 if (ret)
  rc = ret;

 return rc;
}
