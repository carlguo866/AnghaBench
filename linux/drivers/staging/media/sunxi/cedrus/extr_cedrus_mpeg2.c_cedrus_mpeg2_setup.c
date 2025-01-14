
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vb2_queue {int dummy; } ;
struct v4l2_mpeg2_sequence {int vertical_size; int horizontal_size; } ;
struct v4l2_mpeg2_picture {int alternate_scan; int intra_vlc_format; int q_scale_type; int concealment_motion_vectors; int frame_pred_frame_dct; int top_field_first; int picture_structure; int intra_dc_precision; int ** f_code; int picture_coding_type; } ;
struct v4l2_ctrl_mpeg2_slice_params {int data_bit_offset; int bit_size; int backward_ref_ts; int forward_ref_ts; struct v4l2_mpeg2_picture picture; struct v4l2_mpeg2_sequence sequence; } ;
struct v4l2_ctrl_mpeg2_quantization {int * non_intra_quantiser_matrix; scalar_t__ load_non_intra_quantiser_matrix; int * intra_quantiser_matrix; scalar_t__ load_intra_quantiser_matrix; } ;
struct TYPE_8__ {struct v4l2_ctrl_mpeg2_quantization* quantization; struct v4l2_ctrl_mpeg2_slice_params* slice_params; } ;
struct cedrus_run {TYPE_1__* src; TYPE_6__* dst; TYPE_2__ mpeg2; } ;
struct cedrus_dev {int dummy; } ;
struct TYPE_10__ {int m2m_ctx; } ;
struct TYPE_9__ {int height; int width; } ;
struct cedrus_ctx {TYPE_4__ fh; TYPE_3__ src_fmt; struct cedrus_dev* dev; } ;
typedef int dma_addr_t ;
struct TYPE_11__ {int index; } ;
struct TYPE_12__ {TYPE_5__ vb2_buf; } ;
struct TYPE_7__ {int vb2_buf; } ;


 int CEDRUS_CODEC_MPEG2 ;
 int DIV_ROUND_UP (int,int) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VE_DEC_MPEG_BWD_REF_CHROMA_ADDR ;
 int VE_DEC_MPEG_BWD_REF_LUMA_ADDR ;
 int VE_DEC_MPEG_CRTMBADDR ;
 int VE_DEC_MPEG_CTRL ;
 int VE_DEC_MPEG_CTRL_IRQ_MASK ;
 int VE_DEC_MPEG_CTRL_MC_CACHE_EN ;
 int VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK ;
 int VE_DEC_MPEG_ERROR ;
 int VE_DEC_MPEG_FWD_REF_CHROMA_ADDR ;
 int VE_DEC_MPEG_FWD_REF_LUMA_ADDR ;
 int VE_DEC_MPEG_IQMINPUT ;
 int VE_DEC_MPEG_IQMINPUT_FLAG_INTRA ;
 int VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA ;
 int VE_DEC_MPEG_IQMINPUT_WEIGHT (unsigned int,int const) ;
 int VE_DEC_MPEG_MBADDR ;
 int VE_DEC_MPEG_MBADDR_X (int ) ;
 int VE_DEC_MPEG_MBADDR_Y (int ) ;
 int VE_DEC_MPEG_MP12HDR ;
 int VE_DEC_MPEG_MP12HDR_ALTERNATE_SCAN (int ) ;
 int VE_DEC_MPEG_MP12HDR_CONCEALMENT_MOTION_VECTORS (int ) ;
 int VE_DEC_MPEG_MP12HDR_FRAME_PRED_FRAME_DCT (int ) ;
 int VE_DEC_MPEG_MP12HDR_FULL_PEL_BACKWARD_VECTOR (int ) ;
 int VE_DEC_MPEG_MP12HDR_FULL_PEL_FORWARD_VECTOR (int ) ;
 int VE_DEC_MPEG_MP12HDR_F_CODE (int,int,int ) ;
 int VE_DEC_MPEG_MP12HDR_INTRA_DC_PRECISION (int ) ;
 int VE_DEC_MPEG_MP12HDR_INTRA_PICTURE_STRUCTURE (int ) ;
 int VE_DEC_MPEG_MP12HDR_INTRA_VLC_FORMAT (int ) ;
 int VE_DEC_MPEG_MP12HDR_Q_SCALE_TYPE (int ) ;
 int VE_DEC_MPEG_MP12HDR_SLICE_TYPE (int ) ;
 int VE_DEC_MPEG_MP12HDR_TOP_FIELD_FIRST (int ) ;
 int VE_DEC_MPEG_PICBOUNDSIZE ;
 int VE_DEC_MPEG_PICBOUNDSIZE_HEIGHT (int ) ;
 int VE_DEC_MPEG_PICBOUNDSIZE_WIDTH (int ) ;
 int VE_DEC_MPEG_PICCODEDSIZE ;
 int VE_DEC_MPEG_PICCODEDSIZE_HEIGHT (int ) ;
 int VE_DEC_MPEG_PICCODEDSIZE_WIDTH (int ) ;
 int VE_DEC_MPEG_REC_CHROMA ;
 int VE_DEC_MPEG_REC_LUMA ;
 int VE_DEC_MPEG_VLD_ADDR ;
 int VE_DEC_MPEG_VLD_ADDR_BASE (int) ;
 int VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA ;
 int VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA ;
 int VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA ;
 int VE_DEC_MPEG_VLD_END_ADDR ;
 int VE_DEC_MPEG_VLD_LEN ;
 int VE_DEC_MPEG_VLD_OFFSET ;
 int cedrus_dst_buf_addr (struct cedrus_ctx*,int,int) ;
 int cedrus_engine_enable (struct cedrus_dev*,int ) ;
 int cedrus_write (struct cedrus_dev*,int ,int) ;
 int * intra_quantization_matrix_default ;
 int * non_intra_quantization_matrix_default ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 int vb2_dma_contig_plane_dma_addr (int *,int ) ;
 int vb2_find_timestamp (struct vb2_queue*,int ,int ) ;

__attribute__((used)) static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx, struct cedrus_run *run)
{
 const struct v4l2_ctrl_mpeg2_slice_params *slice_params;
 const struct v4l2_mpeg2_sequence *sequence;
 const struct v4l2_mpeg2_picture *picture;
 const struct v4l2_ctrl_mpeg2_quantization *quantization;
 dma_addr_t src_buf_addr, dst_luma_addr, dst_chroma_addr;
 dma_addr_t fwd_luma_addr, fwd_chroma_addr;
 dma_addr_t bwd_luma_addr, bwd_chroma_addr;
 struct cedrus_dev *dev = ctx->dev;
 struct vb2_queue *vq;
 const u8 *matrix;
 int forward_idx;
 int backward_idx;
 unsigned int i;
 u32 reg;

 slice_params = run->mpeg2.slice_params;
 sequence = &slice_params->sequence;
 picture = &slice_params->picture;

 quantization = run->mpeg2.quantization;


 cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);



 if (quantization && quantization->load_intra_quantiser_matrix)
  matrix = quantization->intra_quantiser_matrix;
 else
  matrix = intra_quantization_matrix_default;

 for (i = 0; i < 64; i++) {
  reg = VE_DEC_MPEG_IQMINPUT_WEIGHT(i, matrix[i]);
  reg |= VE_DEC_MPEG_IQMINPUT_FLAG_INTRA;

  cedrus_write(dev, VE_DEC_MPEG_IQMINPUT, reg);
 }



 if (quantization && quantization->load_non_intra_quantiser_matrix)
  matrix = quantization->non_intra_quantiser_matrix;
 else
  matrix = non_intra_quantization_matrix_default;

 for (i = 0; i < 64; i++) {
  reg = VE_DEC_MPEG_IQMINPUT_WEIGHT(i, matrix[i]);
  reg |= VE_DEC_MPEG_IQMINPUT_FLAG_NON_INTRA;

  cedrus_write(dev, VE_DEC_MPEG_IQMINPUT, reg);
 }



 reg = VE_DEC_MPEG_MP12HDR_SLICE_TYPE(picture->picture_coding_type);
 reg |= VE_DEC_MPEG_MP12HDR_F_CODE(0, 0, picture->f_code[0][0]);
 reg |= VE_DEC_MPEG_MP12HDR_F_CODE(0, 1, picture->f_code[0][1]);
 reg |= VE_DEC_MPEG_MP12HDR_F_CODE(1, 0, picture->f_code[1][0]);
 reg |= VE_DEC_MPEG_MP12HDR_F_CODE(1, 1, picture->f_code[1][1]);
 reg |= VE_DEC_MPEG_MP12HDR_INTRA_DC_PRECISION(picture->intra_dc_precision);
 reg |= VE_DEC_MPEG_MP12HDR_INTRA_PICTURE_STRUCTURE(picture->picture_structure);
 reg |= VE_DEC_MPEG_MP12HDR_TOP_FIELD_FIRST(picture->top_field_first);
 reg |= VE_DEC_MPEG_MP12HDR_FRAME_PRED_FRAME_DCT(picture->frame_pred_frame_dct);
 reg |= VE_DEC_MPEG_MP12HDR_CONCEALMENT_MOTION_VECTORS(picture->concealment_motion_vectors);
 reg |= VE_DEC_MPEG_MP12HDR_Q_SCALE_TYPE(picture->q_scale_type);
 reg |= VE_DEC_MPEG_MP12HDR_INTRA_VLC_FORMAT(picture->intra_vlc_format);
 reg |= VE_DEC_MPEG_MP12HDR_ALTERNATE_SCAN(picture->alternate_scan);
 reg |= VE_DEC_MPEG_MP12HDR_FULL_PEL_FORWARD_VECTOR(0);
 reg |= VE_DEC_MPEG_MP12HDR_FULL_PEL_BACKWARD_VECTOR(0);

 cedrus_write(dev, VE_DEC_MPEG_MP12HDR, reg);



 reg = VE_DEC_MPEG_PICCODEDSIZE_WIDTH(sequence->horizontal_size);
 reg |= VE_DEC_MPEG_PICCODEDSIZE_HEIGHT(sequence->vertical_size);

 cedrus_write(dev, VE_DEC_MPEG_PICCODEDSIZE, reg);

 reg = VE_DEC_MPEG_PICBOUNDSIZE_WIDTH(ctx->src_fmt.width);
 reg |= VE_DEC_MPEG_PICBOUNDSIZE_HEIGHT(ctx->src_fmt.height);

 cedrus_write(dev, VE_DEC_MPEG_PICBOUNDSIZE, reg);



 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);

 forward_idx = vb2_find_timestamp(vq, slice_params->forward_ref_ts, 0);
 fwd_luma_addr = cedrus_dst_buf_addr(ctx, forward_idx, 0);
 fwd_chroma_addr = cedrus_dst_buf_addr(ctx, forward_idx, 1);

 cedrus_write(dev, VE_DEC_MPEG_FWD_REF_LUMA_ADDR, fwd_luma_addr);
 cedrus_write(dev, VE_DEC_MPEG_FWD_REF_CHROMA_ADDR, fwd_chroma_addr);

 backward_idx = vb2_find_timestamp(vq, slice_params->backward_ref_ts, 0);
 bwd_luma_addr = cedrus_dst_buf_addr(ctx, backward_idx, 0);
 bwd_chroma_addr = cedrus_dst_buf_addr(ctx, backward_idx, 1);

 cedrus_write(dev, VE_DEC_MPEG_BWD_REF_LUMA_ADDR, bwd_luma_addr);
 cedrus_write(dev, VE_DEC_MPEG_BWD_REF_CHROMA_ADDR, bwd_chroma_addr);



 dst_luma_addr = cedrus_dst_buf_addr(ctx, run->dst->vb2_buf.index, 0);
 dst_chroma_addr = cedrus_dst_buf_addr(ctx, run->dst->vb2_buf.index, 1);

 cedrus_write(dev, VE_DEC_MPEG_REC_LUMA, dst_luma_addr);
 cedrus_write(dev, VE_DEC_MPEG_REC_CHROMA, dst_chroma_addr);



 cedrus_write(dev, VE_DEC_MPEG_VLD_OFFSET,
       slice_params->data_bit_offset);

 reg = slice_params->bit_size - slice_params->data_bit_offset;
 cedrus_write(dev, VE_DEC_MPEG_VLD_LEN, reg);



 src_buf_addr = vb2_dma_contig_plane_dma_addr(&run->src->vb2_buf, 0);

 reg = VE_DEC_MPEG_VLD_ADDR_BASE(src_buf_addr);
 reg |= VE_DEC_MPEG_VLD_ADDR_VALID_PIC_DATA;
 reg |= VE_DEC_MPEG_VLD_ADDR_LAST_PIC_DATA;
 reg |= VE_DEC_MPEG_VLD_ADDR_FIRST_PIC_DATA;

 cedrus_write(dev, VE_DEC_MPEG_VLD_ADDR, reg);

 reg = src_buf_addr + DIV_ROUND_UP(slice_params->bit_size, 8);
 cedrus_write(dev, VE_DEC_MPEG_VLD_END_ADDR, reg);


 reg = VE_DEC_MPEG_MBADDR_Y(0) | VE_DEC_MPEG_MBADDR_X(0);
 cedrus_write(dev, VE_DEC_MPEG_MBADDR, reg);


 cedrus_write(dev, VE_DEC_MPEG_ERROR, 0);


 cedrus_write(dev, VE_DEC_MPEG_CRTMBADDR, 0);



 reg = VE_DEC_MPEG_CTRL_IRQ_MASK | VE_DEC_MPEG_CTRL_MC_NO_WRITEBACK |
       VE_DEC_MPEG_CTRL_MC_CACHE_EN;

 cedrus_write(dev, VE_DEC_MPEG_CTRL, reg);
}
