
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream {scalar_t__ total_stream_seeks; scalar_t__ total_unbuffered_read_bytes; } ;
struct demuxer {struct stream* stream; } ;
struct demux_internal {int byte_level_seeks; int hack_unbuffered_read_bytes; int cache_unbuffered_read_bytes; scalar_t__ slave_unbuffered_read_bytes; struct demuxer* d_thread; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static void update_bytes_read(struct demux_internal *in)
{
    struct demuxer *demuxer = in->d_thread;

    int64_t new = in->slave_unbuffered_read_bytes;
    in->slave_unbuffered_read_bytes = 0;

    int64_t new_seeks = 0;

    struct stream *stream = demuxer->stream;
    if (stream) {
        new += stream->total_unbuffered_read_bytes;
        stream->total_unbuffered_read_bytes = 0;
        new_seeks += stream->total_stream_seeks;
        stream->total_stream_seeks = 0;
    }

    in->cache_unbuffered_read_bytes += new;
    in->hack_unbuffered_read_bytes += new;
    in->byte_level_seeks += new_seeks;
}
