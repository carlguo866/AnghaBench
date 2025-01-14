
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int table; } ;
struct TYPE_3__ {int table; } ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,...) ;
 int avpriv_report_missing_feature (int *,char*,int,int) ;
 TYPE_2__ ccitt_group3_2d_vlc ;
 TYPE_1__* ccitt_vlc ;
 int decode_uncompressed (int *,int *,int*,int**,int const*,int*) ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int,int) ;

__attribute__((used)) static int decode_group3_2d_line(AVCodecContext *avctx, GetBitContext *gb,
                                 unsigned int width, int *runs,
                                 const int *runend, const int *ref)
{
    int mode = 0, saved_run = 0, t;
    int run_off = *ref++;
    unsigned int offs = 0, run = 0;

    while (offs < width) {
        int cmode = get_vlc2(gb, ccitt_group3_2d_vlc.table, 9, 1);
        if (cmode == -1) {
            av_log(avctx, AV_LOG_ERROR, "Incorrect mode VLC\n");
            return AVERROR_INVALIDDATA;
        }
        if (!cmode) {
            if (run_off < width)
                run_off += *ref++;
            run = run_off - offs;
            offs = run_off;
            if (run_off < width)
                run_off += *ref++;
            if (offs > width) {
                av_log(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            saved_run += run;
        } else if (cmode == 1) {
            int k;
            for (k = 0; k < 2; k++) {
                run = 0;
                for (;;) {
                    t = get_vlc2(gb, ccitt_vlc[mode].table, 9, 2);
                    if (t == -1) {
                        av_log(avctx, AV_LOG_ERROR, "Incorrect code\n");
                        return AVERROR_INVALIDDATA;
                    }
                    run += t;
                    if (t < 64)
                        break;
                }
                *runs++ = run + saved_run;
                if (runs >= runend) {
                    av_log(avctx, AV_LOG_ERROR, "Run overrun\n");
                    return AVERROR_INVALIDDATA;
                }
                saved_run = 0;
                offs += run;
                if (offs > width || run > width) {
                    av_log(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                    return AVERROR_INVALIDDATA;
                }
                mode = !mode;
            }
        } else if (cmode == 9 || cmode == 10) {
            int xxx = get_bits(gb, 3);
            if (cmode == 9 && xxx == 7) {
                int ret;
                int pix_left = width - offs;

                if (saved_run) {
                    av_log(avctx, AV_LOG_ERROR, "saved run %d on entering uncompressed mode\n", saved_run);
                    return AVERROR_INVALIDDATA;
                }
                ret = decode_uncompressed(avctx, gb, &pix_left, &runs, runend, &mode);
                offs = width - pix_left;
                if (ret < 0) {
                    return ret;
                } else if (ret)
                    break;
            } else {
                avpriv_report_missing_feature(avctx, "Special mode %d xxx=%d support", cmode, xxx);
                return AVERROR_PATCHWELCOME;
            }
        } else {
            run = run_off - offs + (cmode - 5);
            run_off -= *--ref;
            offs += run;
            if (offs > width || run > width) {
                av_log(avctx, AV_LOG_ERROR, "Run went out of bounds\n");
                return AVERROR_INVALIDDATA;
            }
            *runs++ = run + saved_run;
            if (runs >= runend) {
                av_log(avctx, AV_LOG_ERROR, "Run overrun\n");
                return AVERROR_INVALIDDATA;
            }
            saved_run = 0;
            mode = !mode;
        }

        while (offs < width && run_off <= offs) {
            run_off += *ref++;
            run_off += *ref++;
        }
    }
    *runs++ = saved_run;
    if (saved_run) {
        if (runs >= runend) {
            av_log(avctx, AV_LOG_ERROR, "Run overrun\n");
            return -1;
        }
        *runs++ = 0;
    }
    return 0;
}
