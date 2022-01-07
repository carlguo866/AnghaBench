
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int (* qpel_mc_func ) (int *,int *,int) ;
typedef int (* h264_chroma_mc_func ) (int *,int *,int const,int,int const,int const) ;
struct TYPE_9__ {int x; int y; } ;
typedef TYPE_2__ cavs_vector ;
struct TYPE_11__ {int ** data; } ;
struct TYPE_8__ {int (* emulated_edge_mc ) (int *,int *,int const,int const,int,int,int const,int const,int const,int const) ;} ;
struct TYPE_10__ {int const l_stride; int const c_stride; int mb_width; int mb_height; int * edge_emu_buffer; TYPE_1__ vdsp; } ;
typedef TYPE_3__ AVSContext ;
typedef TYPE_4__ AVFrame ;


 int stub1 (int *,int *,int,int,int,int,int const,int const,int const,int const) ;
 int stub2 (int *,int *,int) ;
 int stub3 (int *,int *,int const,int const,int,int,int const,int const,int const,int const) ;
 int stub4 (int *,int *,int const,int const,int,int,int const,int const,int const,int const) ;

__attribute__((used)) static inline void mc_dir_part(AVSContext *h, AVFrame *pic, int chroma_height,
                               int delta, int list, uint8_t *dest_y,
                               uint8_t *dest_cb, uint8_t *dest_cr,
                               int src_x_offset, int src_y_offset,
                               qpel_mc_func *qpix_op,
                               h264_chroma_mc_func chroma_op, cavs_vector *mv)
{
    const int mx = mv->x + src_x_offset * 8;
    const int my = mv->y + src_y_offset * 8;
    const int luma_xy = (mx & 3) + ((my & 3) << 2);
    uint8_t *src_y = pic->data[0] + (mx >> 2) + (my >> 2) * h->l_stride;
    uint8_t *src_cb = pic->data[1] + (mx >> 3) + (my >> 3) * h->c_stride;
    uint8_t *src_cr = pic->data[2] + (mx >> 3) + (my >> 3) * h->c_stride;
    int extra_width = 0;
    int extra_height = extra_width;
    const int full_mx = mx >> 2;
    const int full_my = my >> 2;
    const int pic_width = 16 * h->mb_width;
    const int pic_height = 16 * h->mb_height;
    int emu = 0;

    if (!pic->data[0])
        return;
    if (mx & 7)
        extra_width -= 3;
    if (my & 7)
        extra_height -= 3;

    if (full_mx < 0 - extra_width ||
        full_my < 0 - extra_height ||
        full_mx + 16 > pic_width + extra_width ||
        full_my + 16 > pic_height + extra_height) {
        h->vdsp.emulated_edge_mc(h->edge_emu_buffer,
                                 src_y - 2 - 2 * h->l_stride,
                                 h->l_stride, h->l_stride,
                                 16 + 5, 16 + 5 ,
                                 full_mx - 2, full_my - 2,
                                 pic_width, pic_height);
        src_y = h->edge_emu_buffer + 2 + 2 * h->l_stride;
        emu = 1;
    }


    qpix_op[luma_xy](dest_y, src_y, h->l_stride);

    if (emu) {
        h->vdsp.emulated_edge_mc(h->edge_emu_buffer, src_cb,
                                 h->c_stride, h->c_stride,
                                 9, 9 ,
                                 mx >> 3, my >> 3,
                                 pic_width >> 1, pic_height >> 1);
        src_cb = h->edge_emu_buffer;
    }
    chroma_op(dest_cb, src_cb, h->c_stride, chroma_height, mx & 7, my & 7);

    if (emu) {
        h->vdsp.emulated_edge_mc(h->edge_emu_buffer, src_cr,
                                 h->c_stride, h->c_stride,
                                 9, 9 ,
                                 mx >> 3, my >> 3,
                                 pic_width >> 1, pic_height >> 1);
        src_cr = h->edge_emu_buffer;
    }
    chroma_op(dest_cr, src_cr, h->c_stride, chroma_height, mx & 7, my & 7);
}
