
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* codec; } ;
typedef TYPE_2__ snd_stream_t ;
struct TYPE_5__ {int (* read ) (TYPE_2__*,int,void*) ;} ;


 int stub1 (TYPE_2__*,int,void*) ;

int S_CodecReadStream(snd_stream_t *stream, int bytes, void *buffer)
{
 return stream->codec->read(stream, bytes, buffer);
}
