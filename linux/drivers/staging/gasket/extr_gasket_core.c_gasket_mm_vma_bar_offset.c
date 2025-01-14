
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct vm_area_struct {int vm_pgoff; } ;
struct gasket_driver_desc {TYPE_1__* bar_descriptions; scalar_t__ legacy_mmap_address_offset; } ;
struct gasket_dev {int dev; TYPE_2__* internal_desc; } ;
struct TYPE_4__ {struct gasket_driver_desc* driver_desc; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 int PAGE_SHIFT ;
 int dev_err (int ,char*,scalar_t__) ;
 int gasket_get_bar_index (struct gasket_dev const*,scalar_t__) ;
 int trace_gasket_mmap_exit (int) ;

__attribute__((used)) static int gasket_mm_vma_bar_offset(const struct gasket_dev *gasket_dev,
        const struct vm_area_struct *vma,
        ulong *bar_offset)
{
 ulong raw_offset;
 int bar_index;
 const struct gasket_driver_desc *driver_desc =
  gasket_dev->internal_desc->driver_desc;

 raw_offset = (vma->vm_pgoff << PAGE_SHIFT) +
  driver_desc->legacy_mmap_address_offset;
 bar_index = gasket_get_bar_index(gasket_dev, raw_offset);
 if (bar_index < 0) {
  dev_err(gasket_dev->dev,
   "Unable to find matching bar for address 0x%lx\n",
   raw_offset);
  trace_gasket_mmap_exit(bar_index);
  return bar_index;
 }
 *bar_offset =
  raw_offset - driver_desc->bar_descriptions[bar_index].base;

 return 0;
}
