
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmp_connection {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {struct cmp_connection in_conn; struct cmp_connection out_conn; struct amdtp_stream tx_stream; } ;


 int amdtp_stream_destroy (struct amdtp_stream*) ;
 int cmp_connection_destroy (struct cmp_connection*) ;

__attribute__((used)) static void destroy_stream(struct snd_oxfw *oxfw, struct amdtp_stream *stream)
{
 struct cmp_connection *conn;

 if (stream == &oxfw->tx_stream)
  conn = &oxfw->out_conn;
 else
  conn = &oxfw->in_conn;

 amdtp_stream_destroy(stream);
 cmp_connection_destroy(conn);
}
