
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct __gx_tlutregion {int tmem_addr_base; } ;
struct __gx_texregion {int tmem_even; int tmem_odd; } ;
struct __gx_texobj {int tex_filt; int tex_lod; int tex_size; int tex_maddr; size_t tex_flag; int tex_tlut; } ;
struct TYPE_2__ {int* texMapSize; int* texMapWrap; int dirtyState; } ;
typedef int GXTexRegion ;
typedef int GXTexObj ;


 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int ,int,int) ;
 TYPE_1__* __gx ;
 int * _gxteximg0ids ;
 int * _gxteximg1ids ;
 int * _gxteximg2ids ;
 int * _gxteximg3ids ;
 int * _gxtexmode0ids ;
 int * _gxtexmode1ids ;
 int * _gxtextlutids ;
 scalar_t__ tlut_regionCB (int ) ;

void GX_LoadTexObjPreloaded(GXTexObj *obj,GXTexRegion *region,u8 mapid)
{
 u8 type;
 struct __gx_tlutregion *tlut = ((void*)0);
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 struct __gx_texregion *reg = (struct __gx_texregion*)region;

 ptr->tex_filt = (ptr->tex_filt&~0xff000000)|(_SHIFTL(_gxtexmode0ids[mapid],24,8));
 ptr->tex_lod = (ptr->tex_lod&~0xff000000)|(_SHIFTL(_gxtexmode1ids[mapid],24,8));
 ptr->tex_size = (ptr->tex_size&~0xff000000)|(_SHIFTL(_gxteximg0ids[mapid],24,8));
 ptr->tex_maddr = (ptr->tex_maddr&~0xff000000)|(_SHIFTL(_gxteximg3ids[mapid],24,8));

 reg->tmem_even = (reg->tmem_even&~0xff000000)|(_SHIFTL(_gxteximg1ids[mapid],24,8));
 reg->tmem_odd = (reg->tmem_odd&~0xff000000)|(_SHIFTL(_gxteximg2ids[mapid],24,8));

 GX_LOAD_BP_REG(ptr->tex_filt);
 GX_LOAD_BP_REG(ptr->tex_lod);
 GX_LOAD_BP_REG(ptr->tex_size);

 GX_LOAD_BP_REG(reg->tmem_even);
 GX_LOAD_BP_REG(reg->tmem_odd);

 GX_LOAD_BP_REG(ptr->tex_maddr);

 type = ptr->tex_flag;
 if(!(type&0x02)) {
  if(tlut_regionCB)
   tlut = (struct __gx_tlutregion*)tlut_regionCB(ptr->tex_tlut);
  tlut->tmem_addr_base = (tlut->tmem_addr_base&~0xff000000)|(_SHIFTL(_gxtextlutids[mapid],24,8));
  GX_LOAD_BP_REG(tlut->tmem_addr_base);
 }

 __gx->texMapSize[mapid] = ptr->tex_size;
 __gx->texMapWrap[mapid] = ptr->tex_filt;

 __gx->dirtyState |= 0x0001;
}
