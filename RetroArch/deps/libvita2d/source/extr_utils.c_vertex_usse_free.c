
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SceUID ;


 int sceGxmUnmapVertexUsseMemory (void*) ;
 int sceKernelFreeMemBlock (int ) ;
 scalar_t__ sceKernelGetMemBlockBase (int ,void**) ;

void vertex_usse_free(SceUID uid)
{
 void *mem = ((void*)0);
 if (sceKernelGetMemBlockBase(uid, &mem) < 0)
  return;
 sceGxmUnmapVertexUsseMemory(mem);
 sceKernelFreeMemBlock(uid);
}
