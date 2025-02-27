
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_ctx {struct mtk_q_data* q_data; } ;
struct mtk_q_data {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 size_t MTK_Q_DATA_DST ;
 size_t MTK_Q_DATA_SRC ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int) ;

__attribute__((used)) static struct mtk_q_data *mtk_vdec_get_q_data(struct mtk_vcodec_ctx *ctx,
           enum v4l2_buf_type type)
{
 if (V4L2_TYPE_IS_OUTPUT(type))
  return &ctx->q_data[MTK_Q_DATA_SRC];

 return &ctx->q_data[MTK_Q_DATA_DST];
}
