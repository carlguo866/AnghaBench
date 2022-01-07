
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {int bits; int table; } ;
typedef TYPE_1__ VLC ;
struct TYPE_6__ {int gb; } ;
typedef TYPE_2__ IMCContext ;


 int BANDS ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int) ;
 TYPE_1__** huffman_vlc ;
 size_t** imc_cb_select ;

__attribute__((used)) static void imc_read_level_coeffs(IMCContext *q, int stream_format_code,
                                  int *levlCoeffs)
{
    int i;
    VLC *hufftab[4];
    int start = 0;
    const uint8_t *cb_sel;
    int s;

    s = stream_format_code >> 1;
    hufftab[0] = &huffman_vlc[s][0];
    hufftab[1] = &huffman_vlc[s][1];
    hufftab[2] = &huffman_vlc[s][2];
    hufftab[3] = &huffman_vlc[s][3];
    cb_sel = imc_cb_select[s];

    if (stream_format_code & 4)
        start = 1;
    if (start)
        levlCoeffs[0] = get_bits(&q->gb, 7);
    for (i = start; i < BANDS; i++) {
        levlCoeffs[i] = get_vlc2(&q->gb, hufftab[cb_sel[i]]->table,
                                 hufftab[cb_sel[i]]->bits, 2);
        if (levlCoeffs[i] == 17)
            levlCoeffs[i] += get_bits(&q->gb, 4);
    }
}
