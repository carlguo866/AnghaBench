
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_23__ {unsigned int width; unsigned int height; } ;
struct TYPE_20__ {unsigned int width; unsigned int height; } ;
struct TYPE_21__ {TYPE_1__ surface; } ;
struct TYPE_19__ {unsigned int width; unsigned int height; int depth; int imageSize; int mipLevels; int use; TYPE_10__* image; int alignment; void* format; void* dim; int tileMode; } ;
struct TYPE_18__ {int viewNumSlices; TYPE_17__ surface; void* compMap; } ;
struct TYPE_26__ {TYPE_6__* pass; TYPE_4__ vp; TYPE_5__* shader_preset; TYPE_2__ color_buffer; TYPE_10__ texture; scalar_t__ rgb32; } ;
typedef TYPE_7__ wiiu_video_t ;
struct TYPE_22__ {int type_x; unsigned int scale_x; unsigned int abs_x; int type_y; unsigned int scale_y; unsigned int abs_y; scalar_t__ srgb_fbo; scalar_t__ fp_fbo; } ;
struct video_shader_pass {TYPE_3__ fbo; } ;
struct TYPE_25__ {int mem1; TYPE_10__ color_buffer; TYPE_10__ texture; } ;
struct TYPE_24__ {unsigned int passes; struct video_shader_pass* pass; } ;
typedef int GX2Texture ;


 int GX2CalcSurfaceSizeAndAlignment (TYPE_17__*) ;
 int GX2InitColorBufferRegs (TYPE_10__*) ;
 int GX2InitTextureRegs (TYPE_10__*) ;
 int GX2Invalidate (int ,TYPE_10__*,int) ;
 void* GX2_COMP_SEL (int ,int ,int ,int ) ;
 int GX2_INVALIDATE_MODE_CPU_TEXTURE ;
 void* GX2_SURFACE_DIM_TEXTURE_2D ;
 void* GX2_SURFACE_FORMAT_FLOAT_R32_G32_B32_A32 ;
 void* GX2_SURFACE_FORMAT_SRGB_R8_G8_B8_A8 ;
 void* GX2_SURFACE_FORMAT_UNORM_R5_G6_B5 ;
 void* GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 ;
 int GX2_SURFACE_USE_COLOR_BUFFER ;
 int GX2_SURFACE_USE_TEXTURE ;
 int GX2_TILE_MODE_LINEAR_ALIGNED ;
 TYPE_10__* MEM1_alloc (int,int ) ;
 int MEM1_free (TYPE_10__*) ;
 void* MEM2_alloc (int,int ) ;
 int MEM2_free (TYPE_10__*) ;



 int _1 ;
 int _A ;
 int _B ;
 int _G ;
 int _R ;
 int memset (TYPE_10__*,int,int) ;
 int printf (char*) ;
 int wiiu_free_shader_preset (TYPE_7__*) ;

__attribute__((used)) static bool wiiu_init_frame_textures(wiiu_video_t *wiiu, unsigned width, unsigned height)
{
   unsigned i;

   MEM2_free(wiiu->texture.surface.image);

   if (wiiu->shader_preset)
   {
      for (i = 0; i < wiiu->shader_preset->passes; i++)
      {
         if(wiiu->pass[i].mem1)
            MEM1_free(wiiu->pass[i].texture.surface.image);
         else
            MEM2_free(wiiu->pass[i].texture.surface.image);

         wiiu->pass[i].texture.surface.image = ((void*)0);
      }
   }


   memset(&wiiu->texture, 0, sizeof(GX2Texture));
   wiiu->texture.surface.width = width;
   wiiu->texture.surface.height = height;
   wiiu->texture.surface.depth = 1;
   wiiu->texture.surface.dim = GX2_SURFACE_DIM_TEXTURE_2D;
   wiiu->texture.surface.tileMode = GX2_TILE_MODE_LINEAR_ALIGNED;
   wiiu->texture.viewNumSlices = 1;

   if (wiiu->rgb32)
   {
      wiiu->texture.surface.format = GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8;
      wiiu->texture.compMap = GX2_COMP_SEL(_G, _B, _A, _1);
   }
   else
   {
      wiiu->texture.surface.format = GX2_SURFACE_FORMAT_UNORM_R5_G6_B5;
      wiiu->texture.compMap = GX2_COMP_SEL(_B, _G, _R, _1);
   }

   GX2CalcSurfaceSizeAndAlignment(&wiiu->texture.surface);
   GX2InitTextureRegs(&wiiu->texture);

   wiiu->texture.surface.image = MEM2_alloc(wiiu->texture.surface.imageSize,
                                 wiiu->texture.surface.alignment);
   memset(wiiu->texture.surface.image, 0x0, wiiu->texture.surface.imageSize);
   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_TEXTURE, wiiu->texture.surface.image,
                 wiiu->texture.surface.imageSize);

   if (wiiu->shader_preset)
   {
      for (i = 0; i < wiiu->shader_preset->passes; i++)
      {
         struct video_shader_pass *pass = &wiiu->shader_preset->pass[i];

         switch (pass->fbo.type_x)
         {
         case 129:
            width *= pass->fbo.scale_x;
            break;

         case 128:
            width = wiiu->vp.width * pass->fbo.scale_x;
            break;

         case 130:
            width = pass->fbo.abs_x;
            break;

         default:
            break;
         }

         switch (pass->fbo.type_y)
         {
         case 129:
            height *= pass->fbo.scale_y;
            break;

         case 128:
            height = wiiu->vp.height * pass->fbo.scale_y;
            break;

         case 130:
            height = pass->fbo.abs_y;
            break;

         default:
            break;
         }

         if (!width)
            width = wiiu->color_buffer.surface.width;

         if (!height)
            height = wiiu->color_buffer.surface.height;

         memset(&wiiu->pass[i].texture, 0, sizeof(wiiu->pass[i].texture));
         wiiu->pass[i].texture.surface.dim = GX2_SURFACE_DIM_TEXTURE_2D;
         wiiu->pass[i].texture.surface.width = width;
         wiiu->pass[i].texture.surface.height = height;
         wiiu->pass[i].texture.surface.depth = 1;



         wiiu->pass[i].texture.surface.format = pass->fbo.fp_fbo ?
               GX2_SURFACE_FORMAT_FLOAT_R32_G32_B32_A32 :
               pass->fbo.srgb_fbo ? GX2_SURFACE_FORMAT_SRGB_R8_G8_B8_A8 :
               GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8;
         wiiu->pass[i].texture.surface.use = (GX2_SURFACE_USE_TEXTURE |
               GX2_SURFACE_USE_COLOR_BUFFER);
         wiiu->pass[i].texture.viewNumSlices = 1;
         wiiu->pass[i].texture.compMap = GX2_COMP_SEL(_R, _G, _B, _A);

         GX2CalcSurfaceSizeAndAlignment(&wiiu->pass[i].texture.surface);
         GX2InitTextureRegs(&wiiu->pass[i].texture);

         if ((i != (wiiu->shader_preset->passes - 1)) || (width != wiiu->vp.width)
               || (height != wiiu->vp.height))
         {
            wiiu->pass[i].mem1 = 1;
            wiiu->pass[i].texture.surface.image = MEM1_alloc(wiiu->pass[i].texture.surface.imageSize,
                                                  wiiu->pass[i].texture.surface.alignment);

            if (!wiiu->pass[i].texture.surface.image)
            {
               printf("failed to allocate Render target memory from MEM1. trying MEM2.\n");
               wiiu->pass[i].mem1 = 0;
               wiiu->pass[i].texture.surface.image = MEM2_alloc(wiiu->pass[i].texture.surface.imageSize,
                                                     wiiu->pass[i].texture.surface.alignment);

               if (!wiiu->pass[i].texture.surface.image)
               {
                  printf("failed to allocate Render target memory from MEM2. falling back to stock.\n");

                  wiiu_free_shader_preset(wiiu);
                  return 0;
               }
            }

            memset(wiiu->pass[i].texture.surface.image, 0x00, wiiu->pass[i].texture.surface.imageSize);
            GX2Invalidate(GX2_INVALIDATE_MODE_CPU_TEXTURE, wiiu->pass[i].texture.surface.image,
                          wiiu->pass[i].texture.surface.imageSize);
         }

         memset(&wiiu->pass[i].color_buffer, 0, sizeof(wiiu->pass[i].color_buffer));
         wiiu->pass[i].color_buffer.surface = wiiu->pass[i].texture.surface;
         GX2InitColorBufferRegs(&wiiu->pass[i].color_buffer);
      }
   }

   return 1;
}
