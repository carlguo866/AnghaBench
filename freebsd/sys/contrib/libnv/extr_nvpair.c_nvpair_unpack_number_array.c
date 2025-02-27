
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_nitems; size_t nvp_datasize; scalar_t__ nvp_data; } ;
typedef TYPE_1__ nvpair_t ;


 int EINVAL ;
 int ERRNO_SET (int ) ;
 scalar_t__ NV_TYPE_NUMBER_ARRAY ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ be64dec (unsigned char const*) ;
 scalar_t__ le64dec (unsigned char const*) ;
 scalar_t__* nv_malloc (size_t) ;

const unsigned char *
nvpair_unpack_number_array(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
     size_t *leftp)
{
 uint64_t *value;
 size_t size;
 unsigned int i;

 PJDLOG_ASSERT(nvp->nvp_type == NV_TYPE_NUMBER_ARRAY);

 size = sizeof(*value) * nvp->nvp_nitems;
 if (nvp->nvp_datasize != size || *leftp < size ||
     nvp->nvp_nitems == 0 || size < nvp->nvp_nitems) {
  ERRNO_SET(EINVAL);
  return (((void*)0));
 }

 value = nv_malloc(size);
 if (value == ((void*)0))
  return (((void*)0));

 for (i = 0; i < nvp->nvp_nitems; i++) {
  if (isbe)
   value[i] = be64dec(ptr);
  else
   value[i] = le64dec(ptr);

  ptr += sizeof(*value);
  *leftp -= sizeof(*value);
 }

 nvp->nvp_data = (uint64_t)(uintptr_t)value;

 return (ptr);
}
