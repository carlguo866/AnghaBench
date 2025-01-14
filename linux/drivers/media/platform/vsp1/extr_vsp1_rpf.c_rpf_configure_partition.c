
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vsp1_rwpf_memory {int* addr; } ;
struct TYPE_6__ {int config; struct vsp1_device* vsp1; } ;
struct v4l2_pix_format_mplane {int num_planes; TYPE_4__* plane_fmt; } ;
struct vsp1_rwpf {TYPE_1__ entity; struct v4l2_pix_format_mplane format; struct vsp1_format_info* fmtinfo; struct vsp1_rwpf_memory mem; } ;
struct vsp1_pipeline {int partitions; scalar_t__ interlaced; TYPE_3__* partition; } ;
struct vsp1_format_info {int* bpp; int hsub; scalar_t__ swap_uv; int vsub; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_device {TYPE_5__* info; } ;
struct v4l2_rect {int width; int left; int height; int top; } ;
struct TYPE_10__ {int gen; } ;
struct TYPE_9__ {int bytesperline; } ;
struct TYPE_7__ {int width; scalar_t__ left; } ;
struct TYPE_8__ {TYPE_2__ rpf; } ;


 int VI6_RPF_SRCM_ADDR_C0 ;
 int VI6_RPF_SRCM_ADDR_C1 ;
 int VI6_RPF_SRCM_ADDR_Y ;
 int VI6_RPF_SRC_BSIZE ;
 int VI6_RPF_SRC_BSIZE_BHSIZE_SHIFT ;
 int VI6_RPF_SRC_BSIZE_BVSIZE_SHIFT ;
 int VI6_RPF_SRC_ESIZE ;
 int VI6_RPF_SRC_ESIZE_EHSIZE_SHIFT ;
 int VI6_RPF_SRC_ESIZE_EVSIZE_SHIFT ;
 void* round_down (int,int ) ;
 int swap (unsigned int,unsigned int) ;
 struct vsp1_rwpf* to_rwpf (int *) ;
 int vsp1_rpf_configure_autofld (struct vsp1_rwpf*,struct vsp1_dl_list*) ;
 int vsp1_rpf_write (struct vsp1_rwpf*,struct vsp1_dl_body*,int ,int) ;
 struct v4l2_rect* vsp1_rwpf_get_crop (struct vsp1_rwpf*,int ) ;

__attribute__((used)) static void rpf_configure_partition(struct vsp1_entity *entity,
        struct vsp1_pipeline *pipe,
        struct vsp1_dl_list *dl,
        struct vsp1_dl_body *dlb)
{
 struct vsp1_rwpf *rpf = to_rwpf(&entity->subdev);
 struct vsp1_rwpf_memory mem = rpf->mem;
 struct vsp1_device *vsp1 = rpf->entity.vsp1;
 const struct vsp1_format_info *fmtinfo = rpf->fmtinfo;
 const struct v4l2_pix_format_mplane *format = &rpf->format;
 struct v4l2_rect crop;
 crop = *vsp1_rwpf_get_crop(rpf, rpf->entity.config);
 if (pipe->partitions > 1) {
  crop.width = pipe->partition->rpf.width;
  crop.left += pipe->partition->rpf.left;
 }

 if (pipe->interlaced) {
  crop.height = round_down(crop.height / 2, fmtinfo->vsub);
  crop.top = round_down(crop.top / 2, fmtinfo->vsub);
 }

 vsp1_rpf_write(rpf, dlb, VI6_RPF_SRC_BSIZE,
         (crop.width << VI6_RPF_SRC_BSIZE_BHSIZE_SHIFT) |
         (crop.height << VI6_RPF_SRC_BSIZE_BVSIZE_SHIFT));
 vsp1_rpf_write(rpf, dlb, VI6_RPF_SRC_ESIZE,
         (crop.width << VI6_RPF_SRC_ESIZE_EHSIZE_SHIFT) |
         (crop.height << VI6_RPF_SRC_ESIZE_EVSIZE_SHIFT));

 mem.addr[0] += crop.top * format->plane_fmt[0].bytesperline
       + crop.left * fmtinfo->bpp[0] / 8;

 if (format->num_planes > 1) {
  unsigned int offset;

  offset = crop.top * format->plane_fmt[1].bytesperline
         + crop.left / fmtinfo->hsub
         * fmtinfo->bpp[1] / 8;
  mem.addr[1] += offset;
  mem.addr[2] += offset;
 }





 if (vsp1->info->gen == 3 && format->num_planes == 3 &&
     fmtinfo->swap_uv)
  swap(mem.addr[1], mem.addr[2]);





 if (pipe->interlaced) {
  vsp1_rpf_configure_autofld(rpf, dl);
 } else {
  vsp1_rpf_write(rpf, dlb, VI6_RPF_SRCM_ADDR_Y, mem.addr[0]);
  vsp1_rpf_write(rpf, dlb, VI6_RPF_SRCM_ADDR_C0, mem.addr[1]);
  vsp1_rpf_write(rpf, dlb, VI6_RPF_SRCM_ADDR_C1, mem.addr[2]);
 }
}
