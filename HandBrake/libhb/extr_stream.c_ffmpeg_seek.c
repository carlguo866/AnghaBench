
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {int need_keyframe; TYPE_2__* ffmpeg_ic; } ;
typedef TYPE_1__ hb_stream_t ;
struct TYPE_7__ {scalar_t__ duration; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVSEEK_FLAG_BACKWARD ;
 int avformat_seek_file (TYPE_2__*,int,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ ffmpeg_initial_timestamp (TYPE_1__*) ;
 int hb_error (char*) ;

__attribute__((used)) static int ffmpeg_seek( hb_stream_t *stream, float frac )
{
    AVFormatContext *ic = stream->ffmpeg_ic;
    int res;
    if ( frac > 0. )
    {
        int64_t pos = (double)stream->ffmpeg_ic->duration * (double)frac +
                ffmpeg_initial_timestamp( stream );
        res = avformat_seek_file( ic, -1, 0, pos, pos, AVSEEK_FLAG_BACKWARD);
        if (res < 0)
        {
            hb_error("avformat_seek_file failed");
        }
    }
    else
    {
        int64_t pos = ffmpeg_initial_timestamp( stream );
        res = avformat_seek_file( ic, -1, 0, pos, pos, AVSEEK_FLAG_BACKWARD);
        if (res < 0)
        {
            hb_error("avformat_seek_file failed");
        }
    }
    stream->need_keyframe = 1;
    return 1;
}
