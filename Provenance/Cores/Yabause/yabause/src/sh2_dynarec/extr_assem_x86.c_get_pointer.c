
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;
typedef scalar_t__ pointer ;



pointer get_pointer(void *stub)
{
  s32 *i_ptr=*((u32 **)(stub+6));
  return *i_ptr+(pointer)i_ptr+4;
}
