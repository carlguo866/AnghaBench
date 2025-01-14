
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int read_pll (struct drm_device*,int) ;

__attribute__((used)) static u32
read_vco(struct drm_device *dev, u32 dsrc)
{
 struct nouveau_device *device = nouveau_dev(dev);
 u32 ssrc = nv_rd32(device, dsrc);
 if (!(ssrc & 0x00000100))
  return read_pll(dev, 0x00e800);
 return read_pll(dev, 0x00e820);
}
