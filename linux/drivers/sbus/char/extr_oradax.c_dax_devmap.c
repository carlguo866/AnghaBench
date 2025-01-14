
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {size_t vm_end; int vm_flags; int vm_start; int vm_page_prot; } ;
struct file {scalar_t__ private_data; } ;
struct dax_ctx {scalar_t__ owner; int ca_buf_ra; } ;


 size_t DAX_MMAP_LEN ;
 int EAGAIN ;
 int EINVAL ;
 int EPERM ;
 int PAGE_SHIFT ;
 int VM_MAYWRITE ;
 int VM_WRITE ;
 scalar_t__ current ;
 int dax_dbg (char*,...) ;
 scalar_t__ remap_pfn_range (struct vm_area_struct*,int ,int,size_t,int ) ;

__attribute__((used)) static int dax_devmap(struct file *f, struct vm_area_struct *vma)
{
 struct dax_ctx *ctx = (struct dax_ctx *)f->private_data;
 size_t len = vma->vm_end - vma->vm_start;

 dax_dbg("len=0x%lx, flags=0x%lx", len, vma->vm_flags);

 if (ctx->owner != current) {
  dax_dbg("devmap called from wrong thread");
  return -EINVAL;
 }

 if (len != DAX_MMAP_LEN) {
  dax_dbg("len(%lu) != DAX_MMAP_LEN(%d)", len, DAX_MMAP_LEN);
  return -EINVAL;
 }


 if (vma->vm_flags & VM_WRITE)
  return -EPERM;
 vma->vm_flags &= ~VM_MAYWRITE;

 if (remap_pfn_range(vma, vma->vm_start, ctx->ca_buf_ra >> PAGE_SHIFT,
       len, vma->vm_page_prot))
  return -EAGAIN;

 dax_dbg("mmapped completion area at uva 0x%lx", vma->vm_start);
 return 0;
}
