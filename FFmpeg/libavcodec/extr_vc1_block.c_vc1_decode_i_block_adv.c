
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef unsigned int int16_t ;
struct TYPE_9__ {int* qscale_table; } ;
struct TYPE_11__ {int ac_pred; int mb_x; int mb_y; int mb_stride; size_t dc_table_index; int y_dc_scale; int c_dc_scale; unsigned int*** ac_val; size_t* block_index; int* block_wrap; int* block_last_index; TYPE_1__ current_picture; int avctx; int gb; } ;
struct TYPE_10__ {int a_avail; int c_avail; int halfpq; scalar_t__ fcm; size_t* zzi_8x8; size_t** zz_8x8; int left_blk_sh; int top_blk_sh; int pquantizer; TYPE_3__ s; int overlap; } ;
typedef TYPE_2__ VC1Context ;
struct TYPE_13__ {int table; } ;
struct TYPE_12__ {int table; } ;
typedef TYPE_3__ MpegEncContext ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int DC_VLC_BITS ;
 int FFABS (int) ;
 scalar_t__ ILACE_FRAME ;
 int av_log (int ,int ,char*) ;
 TYPE_8__* ff_msmp4_dc_chroma_vlc ;
 TYPE_7__* ff_msmp4_dc_luma_vlc ;
 unsigned int* ff_vc1_dqscale ;
 scalar_t__ ff_vc1_pred_dc (TYPE_3__*,int ,int,int,int,int,unsigned int**,int*) ;
 int get_bits (int *,int const) ;
 scalar_t__ get_bits1 (int *) ;
 int get_vlc2 (int *,int ,int ,int) ;
 int memcpy (unsigned int*,unsigned int*,int) ;
 int memset (unsigned int*,int ,int) ;
 int vc1_decode_ac_coeff (TYPE_2__*,int*,int*,int*,int) ;

__attribute__((used)) static int vc1_decode_i_block_adv(VC1Context *v, int16_t block[64], int n,
                                  int coded, int codingset, int mquant)
{
    GetBitContext *gb = &v->s.gb;
    MpegEncContext *s = &v->s;
    int dc_pred_dir = 0;
    int i;
    int16_t *dc_val = ((void*)0);
    int16_t *ac_val, *ac_val2;
    int dcdiff;
    int a_avail = v->a_avail, c_avail = v->c_avail;
    int use_pred = s->ac_pred;
    int scale;
    int q1, q2 = 0;
    int mb_pos = s->mb_x + s->mb_y * s->mb_stride;
    int quant = FFABS(mquant);


    if (n < 4) {
        dcdiff = get_vlc2(&s->gb, ff_msmp4_dc_luma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
    } else {
        dcdiff = get_vlc2(&s->gb, ff_msmp4_dc_chroma_vlc[s->dc_table_index].table, DC_VLC_BITS, 3);
    }
    if (dcdiff < 0) {
        av_log(s->avctx, AV_LOG_ERROR, "Illegal DC VLC\n");
        return -1;
    }
    if (dcdiff) {
        const int m = (quant == 1 || quant == 2) ? 3 - quant : 0;
        if (dcdiff == 119 ) {
            dcdiff = get_bits(gb, 8 + m);
        } else {
            if (m)
                dcdiff = (dcdiff << m) + get_bits(gb, m) - ((1 << m) - 1);
        }
        if (get_bits1(gb))
            dcdiff = -dcdiff;
    }


    dcdiff += ff_vc1_pred_dc(&v->s, v->overlap, quant, n, v->a_avail, v->c_avail, &dc_val, &dc_pred_dir);
    *dc_val = dcdiff;


    if (n < 4)
        scale = s->y_dc_scale;
    else
        scale = s->c_dc_scale;
    block[0] = dcdiff * scale;


    if (!a_avail && !c_avail)
        use_pred = 0;

    scale = quant * 2 + ((mquant < 0) ? 0 : v->halfpq);

    ac_val = s->ac_val[0][s->block_index[n]];
    ac_val2 = ac_val;
    if (dc_pred_dir)
        ac_val -= 16;
    else
        ac_val -= 16 * s->block_wrap[n];

    q1 = s->current_picture.qscale_table[mb_pos];
    if (n == 3)
        q2 = q1;
    else if (dc_pred_dir) {
        if (n == 1)
            q2 = q1;
        else if (c_avail && mb_pos)
            q2 = s->current_picture.qscale_table[mb_pos - 1];
    } else {
        if (n == 2)
            q2 = q1;
        else if (a_avail && mb_pos >= s->mb_stride)
            q2 = s->current_picture.qscale_table[mb_pos - s->mb_stride];
    }


    i = 1;

    if (coded) {
        int last = 0, skip, value;
        const uint8_t *zz_table;
        int k;

        if (v->s.ac_pred) {
            if (!use_pred && v->fcm == ILACE_FRAME) {
                zz_table = v->zzi_8x8;
            } else {
                if (!dc_pred_dir)
                    zz_table = v->zz_8x8[2];
                else
                    zz_table = v->zz_8x8[3];
            }
        } else {
            if (v->fcm != ILACE_FRAME)
                zz_table = v->zz_8x8[1];
            else
                zz_table = v->zzi_8x8;
        }

        while (!last) {
            int ret = vc1_decode_ac_coeff(v, &last, &skip, &value, codingset);
            if (ret < 0)
                return ret;
            i += skip;
            if (i > 63)
                break;
            block[zz_table[i++]] = value;
        }


        if (use_pred) {
            int sh;
            if (dc_pred_dir) {
                sh = v->left_blk_sh;
            } else {
                sh = v->top_blk_sh;
                ac_val += 8;
            }

            q1 = FFABS(q1) * 2 + ((q1 < 0) ? 0 : v->halfpq) - 1;
            if (q1 < 1)
                return AVERROR_INVALIDDATA;
            if (q2)
                q2 = FFABS(q2) * 2 + ((q2 < 0) ? 0 : v->halfpq) - 1;
            if (q2 && q1 != q2) {
                for (k = 1; k < 8; k++)
                    block[k << sh] += (int)(ac_val[k] * (unsigned)q2 * ff_vc1_dqscale[q1 - 1] + 0x20000) >> 18;
            } else {
                for (k = 1; k < 8; k++)
                    block[k << sh] += ac_val[k];
            }
        }

        for (k = 1; k < 8; k++) {
            ac_val2[k ] = block[k << v->left_blk_sh];
            ac_val2[k + 8] = block[k << v->top_blk_sh];
        }


        for (k = 1; k < 64; k++)
            if (block[k]) {
                block[k] *= scale;
                if (!v->pquantizer)
                    block[k] += (block[k] < 0) ? -quant : quant;
            }

    } else {
        int k;

        memset(ac_val2, 0, 16 * 2);


        if (use_pred) {
            int sh;
            if (dc_pred_dir) {
                sh = v->left_blk_sh;
            } else {
                sh = v->top_blk_sh;
                ac_val += 8;
                ac_val2 += 8;
            }
            memcpy(ac_val2, ac_val, 8 * 2);
            q1 = FFABS(q1) * 2 + ((q1 < 0) ? 0 : v->halfpq) - 1;
            if (q1 < 1)
                return AVERROR_INVALIDDATA;
            if (q2)
                q2 = FFABS(q2) * 2 + ((q2 < 0) ? 0 : v->halfpq) - 1;
            if (q2 && q1 != q2) {
                for (k = 1; k < 8; k++)
                    ac_val2[k] = (ac_val2[k] * q2 * ff_vc1_dqscale[q1 - 1] + 0x20000) >> 18;
            }
            for (k = 1; k < 8; k++) {
                block[k << sh] = ac_val2[k] * scale;
                if (!v->pquantizer && block[k << sh])
                    block[k << sh] += (block[k << sh] < 0) ? -quant : quant;
            }
        }
    }
    if (use_pred) i = 63;
    s->block_last_index[n] = i;

    return 0;
}
