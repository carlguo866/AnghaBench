
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvlist_header {scalar_t__ nvlh_magic; int nvlh_flags; void* nvlh_descriptors; void* nvlh_size; } ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 scalar_t__ NVLIST_HEADER_MAGIC ;
 int NV_FLAG_ALL_MASK ;
 int NV_FLAG_BIG_ENDIAN ;
 void* be64toh (void*) ;
 void* le64toh (void*) ;

__attribute__((used)) static bool
nvlist_check_header(struct nvlist_header *nvlhdrp)
{

 if (nvlhdrp->nvlh_magic != NVLIST_HEADER_MAGIC) {
  ERRNO_SET(EINVAL);
  return (0);
 }
 if ((nvlhdrp->nvlh_flags & ~NV_FLAG_ALL_MASK) != 0) {
  ERRNO_SET(EINVAL);
  return (0);
 }

 if ((nvlhdrp->nvlh_flags & NV_FLAG_BIG_ENDIAN) == 0) {
  nvlhdrp->nvlh_size = le64toh(nvlhdrp->nvlh_size);
  nvlhdrp->nvlh_descriptors = le64toh(nvlhdrp->nvlh_descriptors);
 }






 return (1);
}
