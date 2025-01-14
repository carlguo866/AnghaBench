
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_mdp_frame {int width; int height; int* payload; void* fmt; } ;
struct mtk_mdp_dev {TYPE_2__* variant; } ;
struct mtk_mdp_ctx {struct mtk_mdp_dev* mdp_dev; } ;
struct TYPE_4__ {TYPE_1__* pix_min; } ;
struct TYPE_3__ {int org_w; int org_h; int target_rot_dis_w; int target_rot_dis_h; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct mtk_mdp_frame* mtk_mdp_ctx_get_frame (struct mtk_mdp_ctx*,int ) ;
 void* mtk_mdp_find_fmt_by_index (int ,int ) ;

__attribute__((used)) static void mtk_mdp_set_default_params(struct mtk_mdp_ctx *ctx)
{
 struct mtk_mdp_dev *mdp = ctx->mdp_dev;
 struct mtk_mdp_frame *frame;

 frame = mtk_mdp_ctx_get_frame(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
 frame->fmt = mtk_mdp_find_fmt_by_index(0,
     V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
 frame->width = mdp->variant->pix_min->org_w;
 frame->height = mdp->variant->pix_min->org_h;
 frame->payload[0] = frame->width * frame->height;
 frame->payload[1] = frame->payload[0] / 2;

 frame = mtk_mdp_ctx_get_frame(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 frame->fmt = mtk_mdp_find_fmt_by_index(0,
     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 frame->width = mdp->variant->pix_min->target_rot_dis_w;
 frame->height = mdp->variant->pix_min->target_rot_dis_h;
 frame->payload[0] = frame->width * frame->height;
 frame->payload[1] = frame->payload[0] / 2;

}
