
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * seek_fn; } ;
typedef TYPE_1__ svn_stream_t ;
typedef int svn_boolean_t ;



svn_boolean_t
svn_stream_supports_reset(svn_stream_t *stream)
{
  return stream->seek_fn != ((void*)0);
}
