
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int numcomps; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_image_t ;
struct TYPE_12__ {int height; int width; } ;
struct TYPE_11__ {int const* linesize; int** data; } ;
struct TYPE_9__ {int const w; int* data; int h; } ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_4__*,int ,char*) ;

__attribute__((used)) static int libopenjpeg_copy_packed8(AVCodecContext *avctx, const AVFrame *frame, opj_image_t *image)
{
    int compno;
    int x;
    int y;
    int *image_line;
    int frame_index;
    const int numcomps = image->numcomps;

    for (compno = 0; compno < numcomps; ++compno) {
        if (image->comps[compno].w > frame->linesize[0] / numcomps) {
            av_log(avctx, AV_LOG_ERROR, "Error: frame's linesize is too small for the image\n");
            return 0;
        }
    }

    for (compno = 0; compno < numcomps; ++compno) {
        for (y = 0; y < avctx->height; ++y) {
            image_line = image->comps[compno].data + y * image->comps[compno].w;
            frame_index = y * frame->linesize[0] + compno;
            for (x = 0; x < avctx->width; ++x) {
                image_line[x] = frame->data[0][frame_index];
                frame_index += numcomps;
            }
            for (; x < image->comps[compno].w; ++x) {
                image_line[x] = image_line[x - 1];
            }
        }
        for (; y < image->comps[compno].h; ++y) {
            image_line = image->comps[compno].data + y * image->comps[compno].w;
            for (x = 0; x < image->comps[compno].w; ++x) {
                image_line[x] = image_line[x - (int)image->comps[compno].w];
            }
        }
    }

    return 1;
}
