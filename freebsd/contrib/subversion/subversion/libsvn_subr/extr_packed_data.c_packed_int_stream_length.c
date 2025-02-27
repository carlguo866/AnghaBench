
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* private_data; } ;
typedef TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_7__ {TYPE_2__* next; scalar_t__ is_last; TYPE_2__* first_substream; TYPE_1__* packed; } ;
typedef TYPE_3__ packed_int_private_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {scalar_t__ len; } ;



__attribute__((used)) static apr_size_t
packed_int_stream_length(svn_packed__int_stream_t *stream)
{
  packed_int_private_t *private_data = stream->private_data;
  apr_size_t result = private_data->packed ? private_data->packed->len : 0;

  stream = private_data->first_substream;
  while (stream)
    {
      private_data = stream->private_data;
      result += packed_int_stream_length(stream);
      stream = private_data->is_last ? ((void*)0) : private_data->next;
    }

  return result;
}
