
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int blank_texture; } ;
struct TYPE_11__ {int cache; } ;
struct TYPE_14__ {TYPE_3__ display; int staging_pool; TYPE_2__* context; TYPE_1__ pipelines; } ;
typedef TYPE_4__ vk_t ;
typedef unsigned int uint32_t ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_5__ VkPipelineCacheCreateInfo ;
struct TYPE_16__ {int queueFamilyIndex; int flags; int member_0; } ;
typedef TYPE_6__ VkCommandPoolCreateInfo ;
struct TYPE_12__ {int device; int graphics_queue_index; } ;


 int VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT ;
 int VK_FORMAT_B8G8R8A8_UNORM ;
 int VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO ;
 int VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO ;
 int VULKAN_TEXTURE_STATIC ;
 int vkCreateCommandPool (int ,TYPE_6__*,int *,int *) ;
 int vkCreatePipelineCache (int ,TYPE_5__*,int *,int *) ;
 int vulkan_create_texture (TYPE_4__*,int *,int,int,int ,unsigned int*,int *,int ) ;

__attribute__((used)) static void vulkan_init_static_resources(vk_t *vk)
{
   unsigned i;
   uint32_t blank[4 * 4];
   VkCommandPoolCreateInfo pool_info = {
      VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO };


   VkPipelineCacheCreateInfo cache = {
      VK_STRUCTURE_TYPE_PIPELINE_CACHE_CREATE_INFO };

   pool_info.flags = VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT;

   if (!vk->context)
      return;

   vkCreatePipelineCache(vk->context->device,
         &cache, ((void*)0), &vk->pipelines.cache);

   pool_info.queueFamilyIndex = vk->context->graphics_queue_index;

   vkCreateCommandPool(vk->context->device,
         &pool_info, ((void*)0), &vk->staging_pool);

   for (i = 0; i < 4 * 4; i++)
      blank[i] = -1u;

   vk->display.blank_texture = vulkan_create_texture(vk, ((void*)0),
         4, 4, VK_FORMAT_B8G8R8A8_UNORM,
         blank, ((void*)0), VULKAN_TEXTURE_STATIC);
}
