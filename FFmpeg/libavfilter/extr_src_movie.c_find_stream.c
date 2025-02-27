
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_11__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_10__ {scalar_t__ discard; TYPE_1__* codecpar; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 scalar_t__ AVDISCARD_ALL ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_find_best_stream (TYPE_3__*,int,int,int,int *,int ) ;
 char* av_get_media_type_string (int) ;
 int av_log (void*,int ,char*,char const*,...) ;
 int avformat_match_stream_specifier (TYPE_3__*,TYPE_2__*,char const*) ;
 int sscanf (char const*,char*,char*,int*,char*) ;

__attribute__((used)) static AVStream *find_stream(void *log, AVFormatContext *avf, const char *spec)
{
    int i, ret, already = 0, stream_id = -1;
    char type_char[2], dummy;
    AVStream *found = ((void*)0);
    enum AVMediaType type;

    ret = sscanf(spec, "d%1[av]%d%c", type_char, &stream_id, &dummy);
    if (ret >= 1 && ret <= 2) {
        type = type_char[0] == 'v' ? AVMEDIA_TYPE_VIDEO : AVMEDIA_TYPE_AUDIO;
        ret = av_find_best_stream(avf, type, stream_id, -1, ((void*)0), 0);
        if (ret < 0) {
            av_log(log, AV_LOG_ERROR, "No %s stream with index '%d' found\n",
                   av_get_media_type_string(type), stream_id);
            return ((void*)0);
        }
        return avf->streams[ret];
    }
    for (i = 0; i < avf->nb_streams; i++) {
        ret = avformat_match_stream_specifier(avf, avf->streams[i], spec);
        if (ret < 0) {
            av_log(log, AV_LOG_ERROR,
                   "Invalid stream specifier \"%s\"\n", spec);
            return ((void*)0);
        }
        if (!ret)
            continue;
        if (avf->streams[i]->discard != AVDISCARD_ALL) {
            already++;
            continue;
        }
        if (found) {
            av_log(log, AV_LOG_WARNING,
                   "Ambiguous stream specifier \"%s\", using #%d\n", spec, i);
            break;
        }
        found = avf->streams[i];
    }
    if (!found) {
        av_log(log, AV_LOG_WARNING, "Stream specifier \"%s\" %s\n", spec,
               already ? "matched only already used streams" :
                         "did not match any stream");
        return ((void*)0);
    }
    if (found->codecpar->codec_type != AVMEDIA_TYPE_VIDEO &&
        found->codecpar->codec_type != AVMEDIA_TYPE_AUDIO) {
        av_log(log, AV_LOG_ERROR, "Stream specifier \"%s\" matched a %s stream,"
               "currently unsupported by libavfilter\n", spec,
               av_get_media_type_string(found->codecpar->codec_type));
        return ((void*)0);
    }
    return found;
}
