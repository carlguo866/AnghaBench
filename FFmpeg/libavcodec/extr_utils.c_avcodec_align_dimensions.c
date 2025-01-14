
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pix_fmt; } ;
struct TYPE_6__ {int log2_chroma_w; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;
typedef TYPE_2__ AVCodecContext ;


 int AV_NUM_DATA_POINTERS ;
 int FFALIGN (int,int) ;
 int FFMAX (int,int) ;
 int FFMAX3 (int,int,int) ;
 TYPE_1__* av_pix_fmt_desc_get (int ) ;
 int avcodec_align_dimensions2 (TYPE_2__*,int*,int*,int*) ;

void avcodec_align_dimensions(AVCodecContext *s, int *width, int *height)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(s->pix_fmt);
    int chroma_shift = desc->log2_chroma_w;
    int linesize_align[AV_NUM_DATA_POINTERS];
    int align;

    avcodec_align_dimensions2(s, width, height, linesize_align);
    align = FFMAX(linesize_align[0], linesize_align[3]);
    linesize_align[1] <<= chroma_shift;
    linesize_align[2] <<= chroma_shift;
    align = FFMAX3(align, linesize_align[1], linesize_align[2]);
    *width = FFALIGN(*width, align);
}
