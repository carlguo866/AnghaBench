
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int up ;
typedef int uint8_t ;
struct TYPE_3__ {int pre_vlc; int avctx; } ;
typedef TYPE_1__ FourXContext ;


 int ACDC_VLC_BITS ;
 int AV_LOG_ERROR ;
 int FFMAX (int,int ) ;
 int av_log (int ,int ,char*) ;
 int ff_free_vlc (int *) ;
 scalar_t__ init_vlc (int *,int ,int,int*,int,int,int*,int,int,int ) ;
 int memset (int*,int,int) ;

__attribute__((used)) static const uint8_t *read_huffman_tables(FourXContext *f,
                                          const uint8_t * const buf,
                                          int buf_size)
{
    int frequency[512] = { 0 };
    uint8_t flag[512];
    int up[512];
    uint8_t len_tab[257];
    int bits_tab[257];
    int start, end;
    const uint8_t *ptr = buf;
    const uint8_t *ptr_end = buf + buf_size;
    int j;

    memset(up, -1, sizeof(up));

    start = *ptr++;
    end = *ptr++;
    for (;;) {
        int i;

        if (ptr_end - ptr < FFMAX(end - start + 1, 0) + 1) {
            av_log(f->avctx, AV_LOG_ERROR, "invalid data in read_huffman_tables\n");
            return ((void*)0);
        }

        for (i = start; i <= end; i++)
            frequency[i] = *ptr++;
        start = *ptr++;
        if (start == 0)
            break;

        end = *ptr++;
    }
    frequency[256] = 1;

    while ((ptr - buf) & 3)
        ptr++;

    if (ptr > ptr_end) {
        av_log(f->avctx, AV_LOG_ERROR, "ptr overflow in read_huffman_tables\n");
        return ((void*)0);
    }

    for (j = 257; j < 512; j++) {
        int min_freq[2] = { 256 * 256, 256 * 256 };
        int smallest[2] = { 0, 0 };
        int i;
        for (i = 0; i < j; i++) {
            if (frequency[i] == 0)
                continue;
            if (frequency[i] < min_freq[1]) {
                if (frequency[i] < min_freq[0]) {
                    min_freq[1] = min_freq[0];
                    smallest[1] = smallest[0];
                    min_freq[0] = frequency[i];
                    smallest[0] = i;
                } else {
                    min_freq[1] = frequency[i];
                    smallest[1] = i;
                }
            }
        }
        if (min_freq[1] == 256 * 256)
            break;

        frequency[j] = min_freq[0] + min_freq[1];
        flag[smallest[0]] = 0;
        flag[smallest[1]] = 1;
        up[smallest[0]] =
        up[smallest[1]] = j;
        frequency[smallest[0]] = frequency[smallest[1]] = 0;
    }

    for (j = 0; j < 257; j++) {
        int node, len = 0, bits = 0;

        for (node = j; up[node] != -1; node = up[node]) {
            bits += flag[node] << len;
            len++;
            if (len > 31)

                av_log(f->avctx, AV_LOG_ERROR,
                       "vlc length overflow\n");
        }

        bits_tab[j] = bits;
        len_tab[j] = len;
    }

    ff_free_vlc(&f->pre_vlc);
    if (init_vlc(&f->pre_vlc, ACDC_VLC_BITS, 257, len_tab, 1, 1,
                 bits_tab, 4, 4, 0))
        return ((void*)0);

    return ptr;
}
