
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct pt_section {int (* memsize ) (struct pt_section const*,unsigned long long*) ;scalar_t__ mcount; } ;


 int pt_section_bcache_memsize (struct pt_section const*,unsigned long long*) ;
 int pte_internal ;

__attribute__((used)) static int pt_section_memsize_locked(const struct pt_section *section,
         uint64_t *psize)
{
 uint64_t msize, bcsize;
 int (*memsize)(const struct pt_section *section, uint64_t *size);
 int errcode;

 if (!section || !psize)
  return -pte_internal;

 memsize = section->memsize;
 if (!memsize) {
  if (section->mcount)
   return -pte_internal;

  *psize = 0ull;
  return 0;
 }

 errcode = memsize(section, &msize);
 if (errcode < 0)
  return errcode;

 errcode = pt_section_bcache_memsize(section, &bcsize);
 if (errcode < 0)
  return errcode;

 *psize = msize + bcsize;

 return 0;
}
