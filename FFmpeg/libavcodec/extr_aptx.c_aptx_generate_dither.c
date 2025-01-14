
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int codeword_history; unsigned int* dither; int dither_parity; } ;
typedef TYPE_1__ Channel ;


 int NB_SUBBANDS ;
 int aptx_update_codeword_history (TYPE_1__*) ;

__attribute__((used)) static void aptx_generate_dither(Channel *channel)
{
    int subband;
    int64_t m;
    int32_t d;

    aptx_update_codeword_history(channel);

    m = (int64_t)5184443 * (channel->codeword_history >> 7);
    d = (m * 4) + (m >> 22);
    for (subband = 0; subband < NB_SUBBANDS; subband++)
        channel->dither[subband] = (unsigned)d << (23 - 5*subband);
    channel->dither_parity = (d >> 25) & 1;
}
