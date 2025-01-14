
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int block_align; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_13__ {int size; int * data; } ;
struct TYPE_12__ {int gain_lpc; int gain_rec; int * gain_hist; int sp_lpc; int sp_rec; int * sp_hist; } ;
typedef TYPE_1__ RA288Context ;
typedef int GetBitContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int RA288_BLOCKS_PER_FRAME ;
 int RA288_BLOCK_SIZE ;
 float* amptable ;
 int av_log (TYPE_4__*,int ,char*,int,int) ;
 int backward_filter (TYPE_1__*,int *,int ,int ,int ,int ,int,int,int,int) ;
 int decode (TYPE_1__*,float,int) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int gain_bw_tab ;
 int gain_window ;
 size_t get_bits (int *,int) ;
 int init_get_bits8 (int *,int const*,int) ;
 int memcpy (float*,int *,int) ;
 int syn_bw_tab ;
 int syn_window ;

__attribute__((used)) static int ra288_decode_frame(AVCodecContext * avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    float *out;
    int i, ret;
    RA288Context *ractx = avctx->priv_data;
    GetBitContext gb;

    if (buf_size < avctx->block_align) {
        av_log(avctx, AV_LOG_ERROR,
               "Error! Input buffer is too small [%d<%d]\n",
               buf_size, avctx->block_align);
        return AVERROR_INVALIDDATA;
    }

    ret = init_get_bits8(&gb, buf, avctx->block_align);
    if (ret < 0)
        return ret;


    frame->nb_samples = RA288_BLOCK_SIZE * RA288_BLOCKS_PER_FRAME;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    out = (float *)frame->data[0];

    for (i=0; i < RA288_BLOCKS_PER_FRAME; i++) {
        float gain = amptable[get_bits(&gb, 3)];
        int cb_coef = get_bits(&gb, 6 + (i&1));

        decode(ractx, gain, cb_coef);

        memcpy(out, &ractx->sp_hist[70 + 36], RA288_BLOCK_SIZE * sizeof(*out));
        out += RA288_BLOCK_SIZE;

        if ((i & 7) == 3) {
            backward_filter(ractx, ractx->sp_hist, ractx->sp_rec, syn_window,
                            ractx->sp_lpc, syn_bw_tab, 36, 40, 35, 70);

            backward_filter(ractx, ractx->gain_hist, ractx->gain_rec, gain_window,
                            ractx->gain_lpc, gain_bw_tab, 10, 8, 20, 28);
        }
    }

    *got_frame_ptr = 1;

    return avctx->block_align;
}
