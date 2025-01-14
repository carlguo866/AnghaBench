
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enable; int height; int width; scalar_t__ quality; } ;
struct TYPE_3__ {int nHeight; int nWidth; void* bUsePreview; void* bEnable; } ;
typedef scalar_t__ OMX_PTR ;
typedef TYPE_1__ OMX_PARAM_BRCMTHUMBNAILTYPE ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PARAMETER_THUMBNAIL_CONFIG_T ;
typedef int MMAL_PARAMETER_HEADER_T ;
typedef scalar_t__ MMALOMX_PARAM_MAPPING_DIRECTION ;


 scalar_t__ MMALOMX_PARAM_MAPPING_TO_MMAL ;
 int MMAL_SUCCESS ;
 void* OMX_FALSE ;
 void* OMX_TRUE ;

__attribute__((used)) static MMAL_STATUS_T mmalomx_param_mapping_thumb_cfg(MMALOMX_PARAM_MAPPING_DIRECTION dir,
   MMAL_PARAMETER_HEADER_T *mmal_param, OMX_PTR omx_param)
{
   OMX_PARAM_BRCMTHUMBNAILTYPE *omx = (OMX_PARAM_BRCMTHUMBNAILTYPE *)omx_param;
   MMAL_PARAMETER_THUMBNAIL_CONFIG_T *mmal = (MMAL_PARAMETER_THUMBNAIL_CONFIG_T *)mmal_param;

   if (dir == MMALOMX_PARAM_MAPPING_TO_MMAL)
   {
      mmal->enable = !!omx->bEnable;
      mmal->width = omx->nWidth;
      mmal->height = omx->nHeight;
      mmal->quality = 0;
   }
   else
   {
      omx->bEnable = mmal->enable ? OMX_TRUE : OMX_FALSE;
      omx->bUsePreview = OMX_FALSE;
      omx->nWidth = mmal->width;
      omx->nHeight = mmal->height;

   }

   return MMAL_SUCCESS;
}
