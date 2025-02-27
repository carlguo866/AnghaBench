
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct xfs_log_vec {int dummy; } ;
struct xfs_log_iovec {int dummy; } ;
struct TYPE_2__ {int blf_flags; } ;
struct xfs_buf_log_item {int bli_flags; TYPE_1__ __bli_format; struct xfs_buf* bli_buf; } ;
struct xfs_buf_log_format {int blf_flags; int blf_size; int blf_map_size; int blf_data_map; } ;
struct xfs_buf {int dummy; } ;


 int ASSERT (int) ;
 int XFS_BLF_CANCEL ;
 int XFS_BLI_STALE ;
 int XLOG_REG_TYPE_BFORMAT ;
 int trace_xfs_buf_item_format_stale (struct xfs_buf_log_item*) ;
 int xfs_buf_item_copy_iovec (struct xfs_log_vec*,struct xfs_log_iovec**,struct xfs_buf*,int,int,int) ;
 scalar_t__ xfs_buf_item_straddle (struct xfs_buf*,int,int,int) ;
 int xfs_buf_log_format_size (struct xfs_buf_log_format*) ;
 int xfs_next_bit (int ,int ,int) ;
 struct xfs_buf_log_format* xlog_copy_iovec (struct xfs_log_vec*,struct xfs_log_iovec**,int ,struct xfs_buf_log_format*,int) ;

__attribute__((used)) static void
xfs_buf_item_format_segment(
 struct xfs_buf_log_item *bip,
 struct xfs_log_vec *lv,
 struct xfs_log_iovec **vecp,
 uint offset,
 struct xfs_buf_log_format *blfp)
{
 struct xfs_buf *bp = bip->bli_buf;
 uint base_size;
 int first_bit;
 int last_bit;
 int next_bit;
 uint nbits;


 blfp->blf_flags = bip->__bli_format.blf_flags;






 base_size = xfs_buf_log_format_size(blfp);

 first_bit = xfs_next_bit(blfp->blf_data_map, blfp->blf_map_size, 0);
 if (!(bip->bli_flags & XFS_BLI_STALE) && first_bit == -1) {




  return;
 }

 blfp = xlog_copy_iovec(lv, vecp, XLOG_REG_TYPE_BFORMAT, blfp, base_size);
 blfp->blf_size = 1;

 if (bip->bli_flags & XFS_BLI_STALE) {





  trace_xfs_buf_item_format_stale(bip);
  ASSERT(blfp->blf_flags & XFS_BLF_CANCEL);
  return;
 }





 last_bit = first_bit;
 nbits = 1;
 for (;;) {






  next_bit = xfs_next_bit(blfp->blf_data_map, blfp->blf_map_size,
     (uint)last_bit + 1);







  if (next_bit == -1) {
   xfs_buf_item_copy_iovec(lv, vecp, bp, offset,
      first_bit, nbits);
   blfp->blf_size++;
   break;
  } else if (next_bit != last_bit + 1 ||
             xfs_buf_item_straddle(bp, offset, next_bit, last_bit)) {
   xfs_buf_item_copy_iovec(lv, vecp, bp, offset,
      first_bit, nbits);
   blfp->blf_size++;
   first_bit = next_bit;
   last_bit = next_bit;
   nbits = 1;
  } else {
   last_bit++;
   nbits++;
  }
 }
}
