
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_stream {int dummy; } ;
struct mp_recorder_sink {struct sh_stream* sh; } ;
struct mp_recorder {int num_streams; struct mp_recorder_sink** streams; } ;



struct mp_recorder_sink *mp_recorder_get_sink(struct mp_recorder *r,
                                              struct sh_stream *stream)
{
    for (int n = 0; n < r->num_streams; n++) {
        struct mp_recorder_sink *rst = r->streams[n];
        if (rst->sh == stream)
            return rst;
    }
    return ((void*)0);
}
