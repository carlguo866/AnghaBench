
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ GX_LIGHTARRAY ;
 int GX_LOAD_CP_REG (scalar_t__,scalar_t__) ;
 scalar_t__ GX_VA_NBT ;
 scalar_t__ GX_VA_NRM ;
 scalar_t__ GX_VA_POS ;
 scalar_t__ MEM_VIRTUAL_TO_PHYSICAL (void*) ;

void GX_SetArray(u32 attr,void *ptr,u8 stride)
{
 u32 idx = 0;

 if(attr==GX_VA_NBT) attr = GX_VA_NRM;
 if(attr>=GX_VA_POS && attr<=GX_LIGHTARRAY) {
  idx = attr-GX_VA_POS;
  GX_LOAD_CP_REG((0xA0+idx),(u32)MEM_VIRTUAL_TO_PHYSICAL(ptr));
  GX_LOAD_CP_REG((0xB0+idx),(u32)stride);
 }
}
