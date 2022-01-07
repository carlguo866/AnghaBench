
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {char* file_buf; int file_bufsize; int w; int h; scalar_t__ buf_idx; int ** buf; int * filename; } ;
typedef TYPE_1__ LifeContext ;
typedef TYPE_2__ AVFilterContext ;


 int ALIVE_CELL ;
 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 void* av_calloc (int,int) ;
 int av_file_map (int *,char**,int*,int ,TYPE_2__*) ;
 int av_freep (int **) ;
 scalar_t__ av_isgraph (int ) ;
 int av_log (TYPE_2__*,int ,char*,int,int,...) ;

__attribute__((used)) static int init_pattern_from_file(AVFilterContext *ctx)
{
    LifeContext *life = ctx->priv;
    char *p;
    int ret, i, i0, j, h = 0, w, max_w = 0;

    if ((ret = av_file_map(life->filename, &life->file_buf, &life->file_bufsize,
                           0, ctx)) < 0)
        return ret;
    av_freep(&life->filename);


    w = 0;
    for (i = 0; i < life->file_bufsize; i++) {
        if (life->file_buf[i] == '\n') {
            h++; max_w = FFMAX(w, max_w); w = 0;
        } else {
            w++;
        }
    }
    av_log(ctx, AV_LOG_DEBUG, "h:%d max_w:%d\n", h, max_w);

    if (life->w) {
        if (max_w > life->w || h > life->h) {
            av_log(ctx, AV_LOG_ERROR,
                   "The specified size is %dx%d which cannot contain the provided file size of %dx%d\n",
                   life->w, life->h, max_w, h);
            return AVERROR(EINVAL);
        }
    } else {

        life->w = max_w;
        life->h = h;
    }

    if (!(life->buf[0] = av_calloc(life->h * life->w, sizeof(*life->buf[0]))) ||
        !(life->buf[1] = av_calloc(life->h * life->w, sizeof(*life->buf[1])))) {
        av_freep(&life->buf[0]);
        av_freep(&life->buf[1]);
        return AVERROR(ENOMEM);
    }


    p = life->file_buf;
    for (i0 = 0, i = (life->h - h)/2; i0 < h; i0++, i++) {
        for (j = (life->w - max_w)/2;; j++) {
            av_log(ctx, AV_LOG_DEBUG, "%d:%d %c\n", i, j, *p == '\n' ? 'N' : *p);
            if (*p == '\n') {
                p++; break;
            } else
                life->buf[0][i*life->w + j] = av_isgraph(*(p++)) ? ALIVE_CELL : 0;
        }
    }
    life->buf_idx = 0;

    return 0;
}
