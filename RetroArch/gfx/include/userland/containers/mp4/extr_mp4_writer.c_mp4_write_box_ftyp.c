
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {scalar_t__ brand; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 scalar_t__ MP4_BRAND_3GP4 ;
 scalar_t__ MP4_BRAND_ISOM ;
 scalar_t__ MP4_BRAND_MP42 ;
 scalar_t__ MP4_BRAND_QT ;
 scalar_t__ MP4_BRAND_SKM2 ;
 int STREAM_STATUS (TYPE_2__*) ;
 int WRITE_FOURCC (TYPE_2__*,scalar_t__,char*) ;
 int WRITE_U32 (TYPE_2__*,int,char*) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T mp4_write_box_ftyp( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   WRITE_FOURCC(p_ctx, module->brand, "major_brand");
   WRITE_U32(p_ctx, 512, "minor_version");
   if(module->brand == MP4_BRAND_QT)
   {
      WRITE_FOURCC(p_ctx, MP4_BRAND_QT, "compatible_brands");
      return STREAM_STATUS(p_ctx);
   }

   if(module->brand == MP4_BRAND_SKM2)
      WRITE_FOURCC(p_ctx, MP4_BRAND_SKM2, "compatible_brands");
   WRITE_FOURCC(p_ctx, MP4_BRAND_ISOM, "compatible_brands");
   WRITE_FOURCC(p_ctx, MP4_BRAND_MP42, "compatible_brands");
   WRITE_FOURCC(p_ctx, MP4_BRAND_3GP4, "compatible_brands");

   return STREAM_STATUS(p_ctx);
}
