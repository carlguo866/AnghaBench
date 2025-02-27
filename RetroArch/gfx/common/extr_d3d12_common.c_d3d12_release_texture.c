
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ MipLevels; } ;
struct TYPE_7__ {int upload_buffer; int handle; TYPE_4__* cpu_descriptor; scalar_t__ srv_heap; TYPE_1__ desc; } ;
typedef TYPE_2__ d3d12_texture_t ;
struct TYPE_8__ {scalar_t__ ptr; } ;


 int Release (int ) ;
 scalar_t__ countof (TYPE_4__*) ;
 int d3d12_descriptor_heap_slot_free (scalar_t__,TYPE_4__) ;

void d3d12_release_texture(d3d12_texture_t* texture)
{
   if (!texture->handle)
      return;

   if (texture->srv_heap && texture->desc.MipLevels <= countof(texture->cpu_descriptor))
   {
      int i;
      for (i = 0; i < texture->desc.MipLevels; i++)
      {
         d3d12_descriptor_heap_slot_free(texture->srv_heap, texture->cpu_descriptor[i]);
         texture->cpu_descriptor[i].ptr = 0;
      }
   }

   Release(texture->handle);
   Release(texture->upload_buffer);
}
