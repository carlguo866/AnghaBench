
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int temp_filename ;
typedef int filename ;
struct TYPE_13__ {char* url; int (* io_open ) (TYPE_4__*,int **,char*,int ,int *) ;TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int nb_streams; TYPE_2__* streams; } ;
struct TYPE_11__ {double last_ts; int bitrate; int metadata_size; int metadata; } ;
struct TYPE_10__ {int time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ HDSContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int AV_BASE64_SIZE (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_base64_encode (char*,int,int ,int ) ;
 int av_basename (char*) ;
 int av_free (char*) ;
 int av_log (TYPE_4__*,int ,char*,char*) ;
 char* av_malloc (int) ;
 double av_q2d (int ) ;
 int avio_flush (int *) ;
 int avio_printf (int *,char*,...) ;
 int ff_format_io_close (TYPE_4__*,int **) ;
 int ff_rename (char*,char*,TYPE_4__*) ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (TYPE_4__*,int **,char*,int ,int *) ;

__attribute__((used)) static int write_manifest(AVFormatContext *s, int final)
{
    HDSContext *c = s->priv_data;
    AVIOContext *out;
    char filename[1024], temp_filename[1024];
    int ret, i;
    double duration = 0;

    if (c->nb_streams > 0)
        duration = c->streams[0].last_ts * av_q2d(s->streams[0]->time_base);

    snprintf(filename, sizeof(filename), "%s/index.f4m", s->url);
    snprintf(temp_filename, sizeof(temp_filename), "%s/index.f4m.tmp", s->url);
    ret = s->io_open(s, &out, temp_filename, AVIO_FLAG_WRITE, ((void*)0));
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to open %s for writing\n", temp_filename);
        return ret;
    }
    avio_printf(out, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n");
    avio_printf(out, "<manifest xmlns=\"http://ns.adobe.com/f4m/1.0\">\n");
    avio_printf(out, "\t<id>%s</id>\n", av_basename(s->url));
    avio_printf(out, "\t<streamType>%s</streamType>\n",
                     final ? "recorded" : "live");
    avio_printf(out, "\t<deliveryType>streaming</deliveryType>\n");
    if (final)
        avio_printf(out, "\t<duration>%f</duration>\n", duration);
    for (i = 0; i < c->nb_streams; i++) {
        OutputStream *os = &c->streams[i];
        int b64_size = AV_BASE64_SIZE(os->metadata_size);
        char *base64 = av_malloc(b64_size);
        if (!base64) {
            ff_format_io_close(s, &out);
            return AVERROR(ENOMEM);
        }
        av_base64_encode(base64, b64_size, os->metadata, os->metadata_size);

        avio_printf(out, "\t<bootstrapInfo profile=\"named\" url=\"stream%d.abst\" id=\"bootstrap%d\" />\n", i, i);
        avio_printf(out, "\t<media bitrate=\"%d\" url=\"stream%d\" bootstrapInfoId=\"bootstrap%d\">\n", os->bitrate/1000, i, i);
        avio_printf(out, "\t\t<metadata>%s</metadata>\n", base64);
        avio_printf(out, "\t</media>\n");
        av_free(base64);
    }
    avio_printf(out, "</manifest>\n");
    avio_flush(out);
    ff_format_io_close(s, &out);
    return ff_rename(temp_filename, filename, s);
}
