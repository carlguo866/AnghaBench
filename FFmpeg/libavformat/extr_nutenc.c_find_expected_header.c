
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int sample_rate; scalar_t__ codec_id; } ;
typedef TYPE_1__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_MP2 ;
 scalar_t__ AV_CODEC_ID_MP3 ;
 scalar_t__ AV_CODEC_ID_MPEG1VIDEO ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 scalar_t__ AV_CODEC_ID_MPEG4 ;
 int AV_WB24 (int*,int) ;
 int AV_WB32 (int*,unsigned int) ;
 int*** avpriv_mpa_bitrate_tab ;
 int* avpriv_mpa_freq_tab ;

__attribute__((used)) static int find_expected_header(AVCodecParameters *p, int size, int key_frame,
                                uint8_t out[64])
{
    int sample_rate = p->sample_rate;

    if (size > 4096)
        return 0;

    AV_WB24(out, 1);

    if (p->codec_id == AV_CODEC_ID_MPEG4) {
        if (key_frame) {
            return 3;
        } else {
            out[3] = 0xB6;
            return 4;
        }
    } else if (p->codec_id == AV_CODEC_ID_MPEG1VIDEO ||
               p->codec_id == AV_CODEC_ID_MPEG2VIDEO) {
        return 3;
    } else if (p->codec_id == AV_CODEC_ID_H264) {
        return 3;
    } else if (p->codec_id == AV_CODEC_ID_MP3 ||
               p->codec_id == AV_CODEC_ID_MP2) {
        int lsf, mpeg25, sample_rate_index, bitrate_index, frame_size;
        int layer = p->codec_id == AV_CODEC_ID_MP3 ? 3 : 2;
        unsigned int header = 0xFFF00000;

        lsf = sample_rate < (24000 + 32000) / 2;
        mpeg25 = sample_rate < (12000 + 16000) / 2;
        sample_rate <<= lsf + mpeg25;
        if (sample_rate < (32000 + 44100) / 2) sample_rate_index = 2;
        else if (sample_rate < (44100 + 48000) / 2) sample_rate_index = 0;
        else sample_rate_index = 1;

        sample_rate = avpriv_mpa_freq_tab[sample_rate_index] >> (lsf + mpeg25);

        for (bitrate_index = 2; bitrate_index < 30; bitrate_index++) {
            frame_size =
                avpriv_mpa_bitrate_tab[lsf][layer - 1][bitrate_index >> 1];
            frame_size = (frame_size * 144000) / (sample_rate << lsf) +
                (bitrate_index & 1);

            if (frame_size == size)
                break;
        }

        header |= (!lsf) << 19;
        header |= (4 - layer) << 17;
        header |= 1 << 16;
        AV_WB32(out, header);
        if (size <= 0)
            return 2;
        if (bitrate_index == 30)
            return -1;

        header |= (bitrate_index >> 1) << 12;
        header |= sample_rate_index << 10;
        header |= (bitrate_index & 1) << 9;

        return 2;


    }
    return 0;
}
