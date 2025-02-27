
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct scatterlist {scalar_t__ length; } ;


 int EINVAL ;
 struct scatterlist* sg_next (struct scatterlist*) ;

int sg_nents_for_len(struct scatterlist *sg, u64 len)
{
 int nents;
 u64 total;

 if (!len)
  return 0;

 for (nents = 0, total = 0; sg; sg = sg_next(sg)) {
  nents++;
  total += sg->length;
  if (total >= len)
   return nents;
 }

 return -EINVAL;
}
