
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {void* addr; int length; } ;
struct scatterlist {int dummy; } ;


 unsigned int SG_MITER_ATOMIC ;
 unsigned int SG_MITER_FROM_SG ;
 unsigned int SG_MITER_TO_SG ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (void*,void*,unsigned int) ;
 unsigned int min (int ,size_t) ;
 scalar_t__ sg_miter_next (struct sg_mapping_iter*) ;
 int sg_miter_start (struct sg_mapping_iter*,struct scatterlist*,unsigned int,unsigned int) ;
 int sg_miter_stop (struct sg_mapping_iter*) ;

__attribute__((used)) static size_t sg_copy_buffer(struct scatterlist *sgl, unsigned int nents,
        void *buf, size_t buflen, int to_buffer)
{
 unsigned int offset = 0;
 struct sg_mapping_iter miter;
 unsigned long flags;
 unsigned int sg_flags = SG_MITER_ATOMIC;

 if (to_buffer)
  sg_flags |= SG_MITER_FROM_SG;
 else
  sg_flags |= SG_MITER_TO_SG;

 sg_miter_start(&miter, sgl, nents, sg_flags);

 local_irq_save(flags);

 while (sg_miter_next(&miter) && offset < buflen) {
  unsigned int len;

  len = min(miter.length, buflen - offset);

  if (to_buffer)
   memcpy(buf + offset, miter.addr, len);
  else
   memcpy(miter.addr, buf + offset, len);

  offset += len;
 }

 sg_miter_stop(&miter);

 local_irq_restore(flags);
 return offset;
}
