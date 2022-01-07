
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {int tmpgexs; int has_afd; int afd; int has_stereo3d; TYPE_1__ stereo3d; } ;
typedef TYPE_2__ Mpeg1Context ;
typedef TYPE_3__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int AV_STEREO3D_2D ;
 int AV_STEREO3D_SIDEBYSIDE ;
 int AV_STEREO3D_SIDEBYSIDE_QUINCUNX ;
 int AV_STEREO3D_TOPBOTTOM ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int memcmp (int const*,char*,int) ;
 scalar_t__ mpeg_decode_a53_cc (TYPE_3__*,int const*,int) ;

__attribute__((used)) static void mpeg_decode_user_data(AVCodecContext *avctx,
                                  const uint8_t *p, int buf_size)
{
    Mpeg1Context *s = avctx->priv_data;
    const uint8_t *buf_end = p + buf_size;
    Mpeg1Context *s1 = avctx->priv_data;
    if (buf_size > 29){
        int i;
        for(i=0; i<20; i++)
            if (!memcmp(p+i, "\0TMPGEXS\0", 9)){
                s->tmpgexs= 1;
            }
    }

    if (buf_end - p >= 5 &&
        p[0] == 'D' && p[1] == 'T' && p[2] == 'G' && p[3] == '1') {
        int flags = p[4];
        p += 5;
        if (flags & 0x80) {

            p += 2;
        }
        if (flags & 0x40) {
            if (buf_end - p < 1)
                return;
            s1->has_afd = 1;
            s1->afd = p[0] & 0x0f;
        }
    } else if (buf_end - p >= 6 &&
               p[0] == 'J' && p[1] == 'P' && p[2] == '3' && p[3] == 'D' &&
               p[4] == 0x03) {

        const uint8_t S3D_video_format_type = p[5] & 0x7F;

        if (S3D_video_format_type == 0x03 ||
            S3D_video_format_type == 0x04 ||
            S3D_video_format_type == 0x08 ||
            S3D_video_format_type == 0x23) {

            s1->has_stereo3d = 1;

            switch (S3D_video_format_type) {
            case 0x03:
                s1->stereo3d.type = AV_STEREO3D_SIDEBYSIDE;
                break;
            case 0x04:
                s1->stereo3d.type = AV_STEREO3D_TOPBOTTOM;
                break;
            case 0x08:
                s1->stereo3d.type = AV_STEREO3D_2D;
                break;
            case 0x23:
                s1->stereo3d.type = AV_STEREO3D_SIDEBYSIDE_QUINCUNX;
                break;
            }
        }
    } else if (mpeg_decode_a53_cc(avctx, p, buf_size)) {
        return;
    }
}
