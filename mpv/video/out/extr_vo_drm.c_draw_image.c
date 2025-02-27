
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct vo {int osd; struct priv* priv; } ;
struct TYPE_6__ {int y0; int y1; int x0; int x1; } ;
struct mp_rect {void* y0; void* x0; } ;
struct priv {int depth; struct mp_image* last_input; TYPE_3__* cur_frame; int osd; int cur_frame_cropped; int sws; TYPE_2__ dst; struct mp_rect src; scalar_t__ active; } ;
struct TYPE_5__ {int align_y; int align_x; } ;
struct mp_image {int pts; TYPE_1__ fmt; } ;
struct framebuffer {int stride; scalar_t__ map; } ;
typedef struct mp_image mp_image_t ;
struct TYPE_7__ {int w; int h; int* stride; scalar_t__* planes; } ;


 int BYTES_PER_PIXEL ;
 void* MP_ALIGN_DOWN (void*,int ) ;
 int memcpy_pic (scalar_t__,scalar_t__,int,int,int,int) ;
 int mp_image_clear (TYPE_3__*,int ,int,int,int) ;
 int mp_image_crop_rc (struct mp_image*,struct mp_rect) ;
 int mp_sws_scale (int ,int ,struct mp_image*) ;
 int osd_draw_on_image (int ,int ,int ,int ,TYPE_3__*) ;
 int talloc_free (struct mp_image*) ;

__attribute__((used)) static void draw_image(struct vo *vo, mp_image_t *mpi, struct framebuffer *front_buf)
{
    struct priv *p = vo->priv;

    if (p->active && front_buf != ((void*)0)) {
        if (mpi) {
            struct mp_image src = *mpi;
            struct mp_rect src_rc = p->src;
            src_rc.x0 = MP_ALIGN_DOWN(src_rc.x0, mpi->fmt.align_x);
            src_rc.y0 = MP_ALIGN_DOWN(src_rc.y0, mpi->fmt.align_y);
            mp_image_crop_rc(&src, src_rc);

            mp_image_clear(p->cur_frame, 0, 0, p->cur_frame->w, p->dst.y0);
            mp_image_clear(p->cur_frame, 0, p->dst.y1, p->cur_frame->w, p->cur_frame->h);
            mp_image_clear(p->cur_frame, 0, p->dst.y0, p->dst.x0, p->dst.y1);
            mp_image_clear(p->cur_frame, p->dst.x1, p->dst.y0, p->cur_frame->w, p->dst.y1);

            mp_sws_scale(p->sws, p->cur_frame_cropped, &src);
            osd_draw_on_image(vo->osd, p->osd, src.pts, 0, p->cur_frame);
        } else {
            mp_image_clear(p->cur_frame, 0, 0, p->cur_frame->w, p->cur_frame->h);
            osd_draw_on_image(vo->osd, p->osd, 0, 0, p->cur_frame);
        }

        if (p->depth == 30) {

            const int w = p->cur_frame->w;
            const int h = p->cur_frame->h;

            const int g_padding = p->cur_frame->stride[0]/sizeof(uint16_t) - w;
            const int b_padding = p->cur_frame->stride[1]/sizeof(uint16_t) - w;
            const int r_padding = p->cur_frame->stride[2]/sizeof(uint16_t) - w;
            const int fbuf_padding = front_buf->stride/sizeof(uint32_t) - w;

            uint16_t *g_ptr = (uint16_t*)p->cur_frame->planes[0];
            uint16_t *b_ptr = (uint16_t*)p->cur_frame->planes[1];
            uint16_t *r_ptr = (uint16_t*)p->cur_frame->planes[2];
            uint32_t *fbuf_ptr = (uint32_t*)front_buf->map;
            for (unsigned y = 0; y < h; ++y) {
                for (unsigned x = 0; x < w; ++x) {
                    *fbuf_ptr++ = (*r_ptr++ << 20) | (*g_ptr++ << 10) | (*b_ptr++);
                }
                g_ptr += g_padding;
                b_ptr += b_padding;
                r_ptr += r_padding;
                fbuf_ptr += fbuf_padding;
            }
        } else {
            memcpy_pic(front_buf->map, p->cur_frame->planes[0],
                       p->cur_frame->w * BYTES_PER_PIXEL, p->cur_frame->h,
                       front_buf->stride,
                       p->cur_frame->stride[0]);
        }
    }

    if (mpi != p->last_input) {
        talloc_free(p->last_input);
        p->last_input = mpi;
    }
}
