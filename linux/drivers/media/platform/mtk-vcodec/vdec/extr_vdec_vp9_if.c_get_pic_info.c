
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdec_vp9_inst {TYPE_1__* vsi; } ;
struct vdec_pic_info {scalar_t__* fb_sz; int buf_h; int buf_w; int pic_h; int pic_w; } ;
struct TYPE_2__ {int buf_h; int buf_w; int pic_h; int pic_w; scalar_t__ buf_len_sz_c; scalar_t__ buf_sz_c_bs; scalar_t__ buf_len_sz_y; scalar_t__ buf_sz_y_bs; } ;


 int mtk_vcodec_debug (struct vdec_vp9_inst*,char*,scalar_t__,scalar_t__,...) ;

__attribute__((used)) static void get_pic_info(struct vdec_vp9_inst *inst, struct vdec_pic_info *pic)
{
 pic->fb_sz[0] = inst->vsi->buf_sz_y_bs + inst->vsi->buf_len_sz_y;
 pic->fb_sz[1] = inst->vsi->buf_sz_c_bs + inst->vsi->buf_len_sz_c;

 pic->pic_w = inst->vsi->pic_w;
 pic->pic_h = inst->vsi->pic_h;
 pic->buf_w = inst->vsi->buf_w;
 pic->buf_h = inst->vsi->buf_h;

 mtk_vcodec_debug(inst, "pic(%d, %d), buf(%d, %d)",
   pic->pic_w, pic->pic_h, pic->buf_w, pic->buf_h);
 mtk_vcodec_debug(inst, "fb size: Y(%d), C(%d)",
  pic->fb_sz[0],
  pic->fb_sz[1]);
}
