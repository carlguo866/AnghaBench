
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ogg_stream {int bufpos; scalar_t__ new_metadata_size; int * new_metadata; TYPE_4__* buf; scalar_t__ bufsize; } ;
struct ogg_state {int nstreams; TYPE_4__* streams; struct ogg_state* next; int curidx; int pos; } ;
struct ogg {int nstreams; struct ogg_state* state; struct ogg_stream* streams; int curidx; } ;
struct TYPE_7__ {struct ogg_stream* buf; } ;
struct TYPE_6__ {int pb; struct ogg* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 struct ogg_state* av_malloc (int) ;
 TYPE_4__* av_mallocz (scalar_t__) ;
 int avio_tell (int ) ;
 int memcpy (TYPE_4__*,struct ogg_stream*,int) ;
 int ogg_restore (TYPE_1__*) ;

__attribute__((used)) static int ogg_save(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_state *ost =
        av_malloc(sizeof(*ost) + (ogg->nstreams - 1) * sizeof(*ogg->streams));
    int i;
    int ret = 0;

    if (!ost)
        return AVERROR(ENOMEM);

    ost->pos = avio_tell(s->pb);
    ost->curidx = ogg->curidx;
    ost->next = ogg->state;
    ost->nstreams = ogg->nstreams;
    memcpy(ost->streams, ogg->streams, ogg->nstreams * sizeof(*ogg->streams));

    for (i = 0; i < ogg->nstreams; i++) {
        struct ogg_stream *os = ogg->streams + i;
        os->buf = av_mallocz(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
        if (os->buf)
            memcpy(os->buf, ost->streams[i].buf, os->bufpos);
        else
            ret = AVERROR(ENOMEM);
        os->new_metadata = ((void*)0);
        os->new_metadata_size = 0;
    }

    ogg->state = ost;

    if (ret < 0)
        ogg_restore(s);

    return ret;
}
