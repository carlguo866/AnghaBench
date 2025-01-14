
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_msec_cache {int isid; struct pt_mapped_section msec; } ;
struct pt_image {int dummy; } ;


 int pt_image_validate (struct pt_image*,struct pt_mapped_section*,int ,int) ;
 int pte_internal ;

int pt_msec_cache_read(struct pt_msec_cache *cache,
         const struct pt_mapped_section **pmsec,
         struct pt_image *image, uint64_t vaddr)
{
 struct pt_mapped_section *msec;
 int isid, errcode;

 if (!cache || !pmsec)
  return -pte_internal;

 msec = &cache->msec;
 isid = cache->isid;

 errcode = pt_image_validate(image, msec, vaddr, isid);
 if (errcode < 0)
  return errcode;

 *pmsec = msec;

 return isid;

}
