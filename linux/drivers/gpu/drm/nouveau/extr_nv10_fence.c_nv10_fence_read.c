
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_channel {int user; } ;


 int nvif_rd32 (int *,int) ;

u32
nv10_fence_read(struct nouveau_channel *chan)
{
 return nvif_rd32(&chan->user, 0x0048);
}
