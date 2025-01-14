
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct gfs2_rbm {int rgd; } ;
struct gfs2_inode {int dummy; } ;
struct gfs2_extent {scalar_t__ len; struct gfs2_rbm rbm; } ;


 scalar_t__ gfs2_free_extlen (struct gfs2_rbm*,scalar_t__) ;
 scalar_t__ gfs2_next_unreserved_block (int ,scalar_t__,scalar_t__,struct gfs2_inode const*) ;
 int gfs2_rbm_from_block (struct gfs2_rbm*,scalar_t__) ;
 scalar_t__ gfs2_rbm_to_block (struct gfs2_rbm*) ;

__attribute__((used)) static int gfs2_reservation_check_and_update(struct gfs2_rbm *rbm,
          const struct gfs2_inode *ip,
          u32 minext,
          struct gfs2_extent *maxext)
{
 u64 block = gfs2_rbm_to_block(rbm);
 u32 extlen = 1;
 u64 nblock;
 int ret;





 if (minext) {
  extlen = gfs2_free_extlen(rbm, minext);
  if (extlen <= maxext->len)
   goto fail;
 }





 nblock = gfs2_next_unreserved_block(rbm->rgd, block, extlen, ip);
 if (nblock == block) {
  if (!minext || extlen >= minext)
   return 0;

  if (extlen > maxext->len) {
   maxext->len = extlen;
   maxext->rbm = *rbm;
  }
fail:
  nblock = block + extlen;
 }
 ret = gfs2_rbm_from_block(rbm, nblock);
 if (ret < 0)
  return ret;
 return 1;
}
