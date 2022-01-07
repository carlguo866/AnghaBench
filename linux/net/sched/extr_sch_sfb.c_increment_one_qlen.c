
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sfb_sched_data {TYPE_1__* bins; } ;
struct sfb_bucket {int qlen; } ;
struct TYPE_2__ {struct sfb_bucket** bins; } ;


 size_t SFB_BUCKET_MASK ;
 size_t SFB_BUCKET_SHIFT ;
 int SFB_LEVELS ;
 int SFB_NUMBUCKETS ;

__attribute__((used)) static void increment_one_qlen(u32 sfbhash, u32 slot, struct sfb_sched_data *q)
{
 int i;
 struct sfb_bucket *b = &q->bins[slot].bins[0][0];

 for (i = 0; i < SFB_LEVELS; i++) {
  u32 hash = sfbhash & SFB_BUCKET_MASK;

  sfbhash >>= SFB_BUCKET_SHIFT;
  if (b[hash].qlen < 0xFFFF)
   b[hash].qlen++;
  b += SFB_NUMBUCKETS;
 }
}
