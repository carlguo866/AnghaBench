
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gx_texobj {int tex_filt; } ;
typedef int GXTexObj ;


 int _SHIFTL (int ,int,int) ;

void GX_InitTexObjMaxAniso(GXTexObj *obj,u8 maxaniso)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 ptr->tex_filt = (ptr->tex_filt&~0x180000)|(_SHIFTL(maxaniso,19,2));
}
