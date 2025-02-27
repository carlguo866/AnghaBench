
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_DIRECT_NBLOCKS ;
 int nilfs_direct_get_ptr (struct nilfs_direct*,int) ;

__attribute__((used)) static int nilfs_direct_gather_data(struct nilfs_bmap *bmap,
        __u64 *keys, __u64 *ptrs, int nitems)
{
 struct nilfs_direct *direct;
 __u64 key;
 __u64 ptr;
 int n;

 direct = (struct nilfs_direct *)bmap;
 if (nitems > NILFS_DIRECT_NBLOCKS)
  nitems = NILFS_DIRECT_NBLOCKS;
 n = 0;
 for (key = 0; key < nitems; key++) {
  ptr = nilfs_direct_get_ptr(direct, key);
  if (ptr != NILFS_BMAP_INVALID_PTR) {
   keys[n] = key;
   ptrs[n] = ptr;
   n++;
  }
 }
 return n;
}
