
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_3__ {scalar_t__ bl_blocks; int bl_avail; int bl_radix; int bl_root; } ;


 int KASSERT (int,char*) ;
 scalar_t__ blst_meta_fill (int ,scalar_t__,scalar_t__,int ) ;

daddr_t
blist_fill(blist_t bl, daddr_t blkno, daddr_t count)
{
 daddr_t filled;

 KASSERT(blkno >= 0 && blkno + count <= bl->bl_blocks,
     ("filling invalid range: blkno %jx, count %d, blocks %jd",
     (uintmax_t)blkno, (int)count, (uintmax_t)bl->bl_blocks));
 filled = blst_meta_fill(bl->bl_root, blkno, count, bl->bl_radix);
 bl->bl_avail -= filled;
 return (filled);
}
