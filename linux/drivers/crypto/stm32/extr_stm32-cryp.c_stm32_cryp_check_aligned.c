
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {size_t offset; size_t length; } ;


 int EINVAL ;
 int IS_ALIGNED (size_t,size_t) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int stm32_cryp_check_aligned(struct scatterlist *sg, size_t total,
        size_t align)
{
 int len = 0;

 if (!total)
  return 0;

 if (!IS_ALIGNED(total, align))
  return -EINVAL;

 while (sg) {
  if (!IS_ALIGNED(sg->offset, sizeof(u32)))
   return -EINVAL;

  if (!IS_ALIGNED(sg->length, align))
   return -EINVAL;

  len += sg->length;
  sg = sg_next(sg);
 }

 if (len != total)
  return -EINVAL;

 return 0;
}
