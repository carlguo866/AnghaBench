
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int luma_intra_matrix ;
struct TYPE_10__ {scalar_t__ codec_id; int active_thread_type; int width; TYPE_3__* priv_data; } ;
struct TYPE_9__ {scalar_t__ huffman; TYPE_1__* mjpeg_ctx; scalar_t__ force_duplicated_matrix; } ;
struct TYPE_8__ {int* permutated; } ;
struct TYPE_7__ {int val_ac_chrominance; int bits_ac_chrominance; int val_ac_luminance; int bits_ac_luminance; int val_dc_chrominance; int bits_dc_chrominance; int val_dc_luminance; int bits_dc_luminance; } ;
typedef TYPE_2__ ScanTable ;
typedef int PutBitContext ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_LJPEG ;
 int AV_WB16 (int *,int) ;
 int DHT ;
 int DQT ;
 int DRI ;
 int FF_THREAD_SLICE ;
 scalar_t__ HUFFMAN_TABLE_OPTIMAL ;
 int avpriv_mjpeg_bits_ac_chrominance ;
 int avpriv_mjpeg_bits_ac_luminance ;
 int avpriv_mjpeg_bits_dc_chrominance ;
 int avpriv_mjpeg_bits_dc_luminance ;
 int avpriv_mjpeg_val_ac_chrominance ;
 int avpriv_mjpeg_val_ac_luminance ;
 int avpriv_mjpeg_val_dc ;
 int flush_put_bits (int *) ;
 int memcmp (int*,int*,int) ;
 int put_bits (int *,int,int) ;
 int * put_bits_ptr (int *) ;
 scalar_t__ put_huffman_table (int *,int,int,int ,int ) ;
 int put_marker (int *,int ) ;

__attribute__((used)) static void jpeg_table_header(AVCodecContext *avctx, PutBitContext *p,
                              ScanTable *intra_scantable,
                              uint16_t luma_intra_matrix[64],
                              uint16_t chroma_intra_matrix[64],
                              int hsample[3])
{
    int i, j, size;
    uint8_t *ptr;
    MpegEncContext *s = ((void*)0);


    if (avctx->codec_id != AV_CODEC_ID_LJPEG)
        s = avctx->priv_data;

    if (avctx->codec_id != AV_CODEC_ID_LJPEG) {
        int matrix_count = 1 + !!memcmp(luma_intra_matrix,
                                        chroma_intra_matrix,
                                        sizeof(luma_intra_matrix[0]) * 64);
    if (s && s->force_duplicated_matrix)
        matrix_count = 2;

    put_marker(p, DQT);
    put_bits(p, 16, 2 + matrix_count * (1 + 64));
    put_bits(p, 4, 0);
    put_bits(p, 4, 0);
    for(i=0;i<64;i++) {
        j = intra_scantable->permutated[i];
        put_bits(p, 8, luma_intra_matrix[j]);
    }

        if (matrix_count > 1) {
            put_bits(p, 4, 0);
            put_bits(p, 4, 1);
            for(i=0;i<64;i++) {
                j = intra_scantable->permutated[i];
                put_bits(p, 8, chroma_intra_matrix[j]);
            }
        }
    }

    if(avctx->active_thread_type & FF_THREAD_SLICE){
        put_marker(p, DRI);
        put_bits(p, 16, 4);
        put_bits(p, 16, (avctx->width-1)/(8*hsample[0]) + 1);
    }


    put_marker(p, DHT);
    flush_put_bits(p);
    ptr = put_bits_ptr(p);
    put_bits(p, 16, 0);
    size = 2;



    if (s && s->huffman == HUFFMAN_TABLE_OPTIMAL) {
        size += put_huffman_table(p, 0, 0, s->mjpeg_ctx->bits_dc_luminance,
                                  s->mjpeg_ctx->val_dc_luminance);
        size += put_huffman_table(p, 0, 1, s->mjpeg_ctx->bits_dc_chrominance,
                                  s->mjpeg_ctx->val_dc_chrominance);

        size += put_huffman_table(p, 1, 0, s->mjpeg_ctx->bits_ac_luminance,
                                  s->mjpeg_ctx->val_ac_luminance);
        size += put_huffman_table(p, 1, 1, s->mjpeg_ctx->bits_ac_chrominance,
                                  s->mjpeg_ctx->val_ac_chrominance);
    } else {
        size += put_huffman_table(p, 0, 0, avpriv_mjpeg_bits_dc_luminance,
                                  avpriv_mjpeg_val_dc);
        size += put_huffman_table(p, 0, 1, avpriv_mjpeg_bits_dc_chrominance,
                                  avpriv_mjpeg_val_dc);

        size += put_huffman_table(p, 1, 0, avpriv_mjpeg_bits_ac_luminance,
                                  avpriv_mjpeg_val_ac_luminance);
        size += put_huffman_table(p, 1, 1, avpriv_mjpeg_bits_ac_chrominance,
                                  avpriv_mjpeg_val_ac_chrominance);
    }
    AV_WB16(ptr, size);
}
