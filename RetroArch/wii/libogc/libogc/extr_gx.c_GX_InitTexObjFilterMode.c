
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gx_texobj {int tex_filt; } ;
typedef int GXTexObj ;


 int GX_LINEAR ;
 int _SHIFTL (int,int,int) ;

void GX_InitTexObjFilterMode(GXTexObj *obj,u8 minfilt,u8 magfilt)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 static u8 GX2HWFiltConv[] = {0x00,0x04,0x01,0x05,0x02,0x06,0x00,0x00};

 ptr->tex_filt = (ptr->tex_filt&~0x10)|(_SHIFTL((magfilt==GX_LINEAR?1:0),4,1));
 ptr->tex_filt = (ptr->tex_filt&~0xe0)|(_SHIFTL(GX2HWFiltConv[minfilt],5,3));
}
