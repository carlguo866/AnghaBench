
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int DBG_FUNC (char*) ;

__attribute__((used)) static inline
uint32_t pqisrc_contiguous_free_elem(uint32_t pi, uint32_t ci, uint32_t elem_in_q)
{
 uint32_t contiguous_free_elem = 0;

 DBG_FUNC(" IN ");

 if(pi >= ci) {
  contiguous_free_elem = (elem_in_q - pi);
  if(ci == 0)
   contiguous_free_elem -= 1;
 } else {
  contiguous_free_elem = (ci - pi - 1);
 }

 DBG_FUNC(" OUT ");

 return contiguous_free_elem;
}
