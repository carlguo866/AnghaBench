
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_jpeg_fmt {scalar_t__ fourcc; unsigned int flags; } ;
struct mtk_jpeg_ctx {int dummy; } ;


 unsigned int MTK_JPEG_FMT_FLAG_DEC_CAPTURE ;
 unsigned int MTK_JPEG_FMT_FLAG_DEC_OUTPUT ;
 unsigned int MTK_JPEG_FMT_TYPE_OUTPUT ;
 unsigned int MTK_JPEG_NUM_FORMATS ;
 struct mtk_jpeg_fmt* mtk_jpeg_formats ;

__attribute__((used)) static struct mtk_jpeg_fmt *mtk_jpeg_find_format(struct mtk_jpeg_ctx *ctx,
       u32 pixelformat,
       unsigned int fmt_type)
{
 unsigned int k, fmt_flag;

 fmt_flag = (fmt_type == MTK_JPEG_FMT_TYPE_OUTPUT) ?
     MTK_JPEG_FMT_FLAG_DEC_OUTPUT :
     MTK_JPEG_FMT_FLAG_DEC_CAPTURE;

 for (k = 0; k < MTK_JPEG_NUM_FORMATS; k++) {
  struct mtk_jpeg_fmt *fmt = &mtk_jpeg_formats[k];

  if (fmt->fourcc == pixelformat && fmt->flags & fmt_flag)
   return fmt;
 }

 return ((void*)0);
}
