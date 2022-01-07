
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct badblocks {int shift; int count; int lock; int * page; } ;
typedef int sector_t ;


 scalar_t__ BB_ACK (int ) ;
 int BB_LEN (int ) ;
 int BB_OFFSET (int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

int md_is_badblock(struct badblocks *bb, sector_t s, int sectors,
     sector_t *first_bad, int *bad_sectors)
{
 int hi;
 int lo;
 u64 *p = bb->page;
 int rv;
 sector_t target = s + sectors;
 unsigned seq;

 if (bb->shift > 0) {

  s >>= bb->shift;
  target += (1<<bb->shift) - 1;
  target >>= bb->shift;
  sectors = target - s;
 }


retry:
 seq = read_seqbegin(&bb->lock);
 lo = 0;
 rv = 0;
 hi = bb->count;
 while (hi - lo > 1) {
  int mid = (lo + hi) / 2;
  sector_t a = BB_OFFSET(p[mid]);
  if (a < target)


   lo = mid;
  else

   hi = mid;
 }

 if (hi > lo) {



  while (lo >= 0 &&
         BB_OFFSET(p[lo]) + BB_LEN(p[lo]) > s) {
   if (BB_OFFSET(p[lo]) < target) {



    if (rv != -1 && BB_ACK(p[lo]))
     rv = 1;
    else
     rv = -1;
    *first_bad = BB_OFFSET(p[lo]);
    *bad_sectors = BB_LEN(p[lo]);
   }
   lo--;
  }
 }

 if (read_seqretry(&bb->lock, seq))
  goto retry;

 return rv;
}
