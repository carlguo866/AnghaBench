
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct cpack_state {int const* c_next; } ;


 int EXTRACT_LE_64BITS (int const*) ;
 int * cpack_align_and_reserve (struct cpack_state*,int) ;

int
cpack_uint64(struct cpack_state *cs, uint64_t *u)
{
 const uint8_t *next;

 if ((next = cpack_align_and_reserve(cs, sizeof(*u))) == ((void*)0))
  return -1;

 *u = EXTRACT_LE_64BITS(next);


 cs->c_next = next + sizeof(*u);
 return 0;
}
