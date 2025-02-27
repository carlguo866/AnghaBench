
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct encoder_frame {scalar_t__* data; scalar_t__* linesize; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int MAX_AV_PLANES ;
 int av_pix_fmt_get_chroma_sub_sample (int,int*,int*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static inline void copy_data(AVFrame *pic, const struct encoder_frame *frame,
        int height, enum AVPixelFormat format)
{
 int h_chroma_shift, v_chroma_shift;
 av_pix_fmt_get_chroma_sub_sample(format, &h_chroma_shift,
      &v_chroma_shift);
 for (int plane = 0; plane < MAX_AV_PLANES; plane++) {
  if (!frame->data[plane])
   continue;

  int frame_rowsize = (int)frame->linesize[plane];
  int pic_rowsize = pic->linesize[plane];
  int bytes = frame_rowsize < pic_rowsize ? frame_rowsize
       : pic_rowsize;
  int plane_height = height >> (plane ? v_chroma_shift : 0);

  for (int y = 0; y < plane_height; y++) {
   int pos_frame = y * frame_rowsize;
   int pos_pic = y * pic_rowsize;

   memcpy(pic->data[plane] + pos_pic,
          frame->data[plane] + pos_frame, bytes);
  }
 }
}
