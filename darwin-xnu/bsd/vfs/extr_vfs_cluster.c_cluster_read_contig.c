
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int user_size_t ;
typedef int user_addr_t ;
typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_t ;
typedef int upl_control_flags_t ;
typedef int u_int32_t ;
struct uio {int uio_offset; int uio_segflg; } ;
struct clios {int io_error; int io_mtxp; scalar_t__ io_wanted; scalar_t__ io_issued; scalar_t__ io_completed; } ;
typedef int off_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef int buf_t ;
typedef int addr64_t ;
struct TYPE_9__ {TYPE_1__* v_mount; } ;
struct TYPE_8__ {scalar_t__ mnt_alignmentmask; scalar_t__ mnt_devblocksize; } ;


 int CL_ASYNC ;
 int CL_DEV_MEMORY ;
 int CL_NOCACHE ;
 int CL_NOZERO ;
 int CL_PASSIVE ;
 int CL_READ ;
 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EINVAL ;
 int FSDBG_CODE (int ,int) ;
 int IO_CONTIG ;
 int IO_NOCACHE ;
 int IO_PASSIVE ;
 int IO_SCALE (TYPE_2__*,int) ;
 int IO_UNKNOWN ;
 int KERNEL_DEBUG (int,int,int,int,scalar_t__,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MAX_IO_CONTIG_SIZE ;
 int MAX_VECTS ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PUSH_SYNC ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int ) ;
 int UPL_CLEAN_IN_PLACE ;
 int UPL_FILE_IO ;
 int UPL_NO_SYNC ;
 int UPL_SET_INTERNAL ;
 int UPL_SET_IO_WIRE ;
 int UPL_SET_LITE ;
 int VM_KERN_MEMORY_FILE ;
 int cl_mtx_attr ;
 int cl_mtx_grp ;
 int cluster_align_phys_io (TYPE_2__*,struct uio*,int,int,int,int (*) (buf_t,void*),void*) ;
 int cluster_io (TYPE_2__*,int ,int,int,int,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int cluster_io_type (struct uio*,int*,int*,int ) ;
 int cluster_iostate_wait (struct clios*,int,char*) ;
 int cluster_syncup (TYPE_2__*,int,int (*) (buf_t,void*),void*,int ) ;
 int current_map () ;
 int kernel_map ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int ubc_upl_abort (int ,int ) ;
 int * ubc_upl_pageinfo (int ) ;
 int uio_curriovbase (struct uio*) ;
 int uio_update (struct uio*,int ) ;
 scalar_t__ upl_phys_page (int *,int ) ;
 scalar_t__ vm_map_get_upl (int ,int ,int*,int *,int *,scalar_t__*,int*,int ,int ) ;

__attribute__((used)) static int
cluster_read_contig(vnode_t vp, struct uio *uio, off_t filesize, int *read_type, u_int32_t *read_length,
      int (*callback)(buf_t, void *), void *callback_arg, int flags)
{
 upl_page_info_t *pl;
 upl_t upl[MAX_VECTS];
 vm_offset_t upl_offset;
 addr64_t dst_paddr = 0;
 user_addr_t iov_base;
 off_t max_size;
 upl_size_t upl_size;
 vm_size_t upl_needed_size;
 mach_msg_type_number_t pages_in_pl;
 upl_control_flags_t upl_flags;
 kern_return_t kret;
 struct clios iostate;
 int error= 0;
 int cur_upl = 0;
 int num_upl = 0;
 int n;
        u_int32_t xsize;
 u_int32_t io_size;
 u_int32_t devblocksize;
 u_int32_t mem_alignment_mask;
 u_int32_t tail_size = 0;
 int bflag;

 if (flags & IO_PASSIVE)
  bflag = CL_PASSIVE;
 else
  bflag = 0;

 if (flags & IO_NOCACHE)
  bflag |= CL_NOCACHE;






 cluster_syncup(vp, filesize, callback, callback_arg, PUSH_SYNC);

 devblocksize = (u_int32_t)vp->v_mount->mnt_devblocksize;
 mem_alignment_mask = (u_int32_t)vp->v_mount->mnt_alignmentmask;

 iostate.io_completed = 0;
 iostate.io_issued = 0;
 iostate.io_error = 0;
 iostate.io_wanted = 0;

 lck_mtx_init(&iostate.io_mtxp, cl_mtx_grp, cl_mtx_attr);

next_cread:
 io_size = *read_length;

 max_size = filesize - uio->uio_offset;

 if (io_size > max_size)
         io_size = max_size;

 iov_base = uio_curriovbase(uio);

 upl_offset = (vm_offset_t)((u_int32_t)iov_base & PAGE_MASK);
 upl_needed_size = upl_offset + io_size;

 pages_in_pl = 0;
 upl_size = upl_needed_size;
 upl_flags = UPL_FILE_IO | UPL_NO_SYNC | UPL_CLEAN_IN_PLACE | UPL_SET_INTERNAL | UPL_SET_LITE | UPL_SET_IO_WIRE;


 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 92)) | DBG_FUNC_START,
       (int)upl_offset, (int)upl_size, (int)iov_base, io_size, 0);

 vm_map_t map = UIO_SEG_IS_USER_SPACE(uio->uio_segflg) ? current_map() : kernel_map;
 kret = vm_map_get_upl(map,
         (vm_map_offset_t)(iov_base & ~((user_addr_t)PAGE_MASK)),
         &upl_size, &upl[cur_upl], ((void*)0), &pages_in_pl, &upl_flags, VM_KERN_MEMORY_FILE, 0);

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 92)) | DBG_FUNC_END,
       (int)upl_offset, upl_size, io_size, kret, 0);

 if (kret != KERN_SUCCESS) {



         error = EINVAL;
  goto wait_for_creads;
 }
 num_upl++;

 if (upl_size < upl_needed_size) {



         error = EINVAL;
  goto wait_for_creads;
 }
 pl = ubc_upl_pageinfo(upl[cur_upl]);

 dst_paddr = ((addr64_t)upl_phys_page(pl, 0) << PAGE_SHIFT) + (addr64_t)upl_offset;

 while (((uio->uio_offset & (devblocksize - 1)) || io_size < devblocksize) && io_size) {
         u_int32_t head_size;

  head_size = devblocksize - (u_int32_t)(uio->uio_offset & (devblocksize - 1));

  if (head_size > io_size)
          head_size = io_size;

  error = cluster_align_phys_io(vp, uio, dst_paddr, head_size, CL_READ, callback, callback_arg);

  if (error)
   goto wait_for_creads;

  upl_offset += head_size;
  dst_paddr += head_size;
  io_size -= head_size;

  iov_base += head_size;
 }
 if ((u_int32_t)iov_base & mem_alignment_mask) {







         error = EINVAL;
  goto wait_for_creads;
 }

 tail_size = io_size & (devblocksize - 1);

 io_size -= tail_size;

 while (io_size && error == 0) {

  if (io_size > MAX_IO_CONTIG_SIZE)
          xsize = MAX_IO_CONTIG_SIZE;
  else
          xsize = io_size;
  cluster_iostate_wait(&iostate, MAX_IO_CONTIG_SIZE * IO_SCALE(vp, 2), "cluster_read_contig");

  if (iostate.io_error) {






          goto wait_for_creads;
  }
         error = cluster_io(vp, upl[cur_upl], upl_offset, uio->uio_offset, xsize,
       CL_READ | CL_NOZERO | CL_DEV_MEMORY | CL_ASYNC | bflag,
       (buf_t)((void*)0), &iostate, callback, callback_arg);




  if (error == 0) {
          uio_update(uio, (user_size_t)xsize);

   dst_paddr += xsize;
   upl_offset += xsize;
   io_size -= xsize;
  }
 }
 if (error == 0 && iostate.io_error == 0 && tail_size == 0 && num_upl < MAX_VECTS && uio->uio_offset < filesize) {

         error = cluster_io_type(uio, read_type, read_length, 0);

  if (error == 0 && *read_type == IO_CONTIG) {
          cur_upl++;
   goto next_cread;
  }
 } else
         *read_type = IO_UNKNOWN;

wait_for_creads:




 cluster_iostate_wait(&iostate, 0, "cluster_read_contig");

 if (iostate.io_error)
         error = iostate.io_error;

 lck_mtx_destroy(&iostate.io_mtxp, cl_mtx_grp);

 if (error == 0 && tail_size)
         error = cluster_align_phys_io(vp, uio, dst_paddr, tail_size, CL_READ, callback, callback_arg);

 for (n = 0; n < num_upl; n++)




         ubc_upl_abort(upl[n], 0);

 return (error);
}
