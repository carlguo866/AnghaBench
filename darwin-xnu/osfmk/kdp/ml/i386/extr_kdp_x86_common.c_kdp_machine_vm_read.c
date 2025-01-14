
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
struct TYPE_3__ {scalar_t__ nbytes; scalar_t__ address; } ;
typedef TYPE_1__ kdp_readphysmem64_req_t ;
typedef scalar_t__ caddr_t ;
typedef int addr64_t ;


 scalar_t__ EFAULT ;
 scalar_t__ FALSE ;
 scalar_t__ IS_PHYS_ADDR (scalar_t__) ;
 int KDP_CURRENT_LCPU ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PAL_KDP_ADDR (int) ;
 int i386_btop (int) ;
 scalar_t__ kdp_machine_phys_read (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ kdp_pmap ;
 scalar_t__ kdp_read_io ;
 scalar_t__ kdp_trans_off ;
 int kdp_vtophys (scalar_t__,int) ;
 scalar_t__ kernel_pmap ;
 scalar_t__ ml_copy_phys (int,int,int ) ;
 int pmap_valid_page (int ) ;
 int printf (char*,scalar_t__,void*,scalar_t__) ;

mach_vm_size_t
kdp_machine_vm_read( mach_vm_address_t src, caddr_t dst, mach_vm_size_t len)
{
 addr64_t cur_virt_src = PAL_KDP_ADDR((addr64_t)src);
 addr64_t cur_virt_dst = PAL_KDP_ADDR((addr64_t)(intptr_t)dst);
 addr64_t cur_phys_dst, cur_phys_src;
 mach_vm_size_t resid = len;
 mach_vm_size_t cnt = 0, cnt_src, cnt_dst;
 pmap_t src_pmap = kernel_pmap;





 if (kdp_trans_off && IS_PHYS_ADDR(src)) {
  kdp_readphysmem64_req_t rq;
  mach_vm_size_t ret;

  rq.address = src;
  rq.nbytes = (uint32_t)len;
  ret = kdp_machine_phys_read(&rq, dst, KDP_CURRENT_LCPU);
  return ret;
 }





 if (kdp_pmap)
  src_pmap = kdp_pmap;

 while (resid != 0) {
  if (!(cur_phys_src = kdp_vtophys(src_pmap,
       cur_virt_src)))
   goto exit;


  if(!(cur_phys_dst = kdp_vtophys(kernel_pmap, cur_virt_dst)))
   goto exit;


  if (kdp_read_io == FALSE)
   if (!pmap_valid_page(i386_btop(cur_phys_dst)) || !pmap_valid_page(i386_btop(cur_phys_src)))
    goto exit;


  cnt_src = PAGE_SIZE - (cur_phys_src & PAGE_MASK);
  cnt_dst = PAGE_SIZE - (cur_phys_dst & PAGE_MASK);
  if (cnt_src > cnt_dst)
   cnt = cnt_dst;
  else
   cnt = cnt_src;
  if (cnt > resid)
   cnt = resid;


  if (EFAULT == ml_copy_phys(cur_phys_src,
        cur_phys_dst,
        (vm_size_t)cnt))
   goto exit;
  cur_virt_src += cnt;
  cur_virt_dst += cnt;
  resid -= cnt;
 }
exit:
 return (len - resid);
}
