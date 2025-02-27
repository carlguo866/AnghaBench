
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* state; } ;
typedef int buf ;
struct TYPE_4__ {int avail_out; int * next_out; int avail_in; int * next_in; } ;
struct TYPE_3__ {int compression_in_started; int compression_in_failures; TYPE_2__ compression_in_stream; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_FORMAT ;




 int Z_PARTIAL_FLUSH ;

 int inflate (TYPE_2__*,int ) ;
 int sshbuf_len (struct sshbuf*) ;
 int * sshbuf_mutable_ptr (struct sshbuf*) ;
 int sshbuf_put (struct sshbuf*,int *,int) ;

__attribute__((used)) static int
uncompress_buffer(struct ssh *ssh, struct sshbuf *in, struct sshbuf *out)
{
 u_char buf[4096];
 int r, status;

 if (ssh->state->compression_in_started != 1)
  return SSH_ERR_INTERNAL_ERROR;

 if ((ssh->state->compression_in_stream.next_in =
     sshbuf_mutable_ptr(in)) == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 ssh->state->compression_in_stream.avail_in = sshbuf_len(in);

 for (;;) {

  ssh->state->compression_in_stream.next_out = buf;
  ssh->state->compression_in_stream.avail_out = sizeof(buf);

  status = inflate(&ssh->state->compression_in_stream,
      Z_PARTIAL_FLUSH);
  switch (status) {
  case 129:
   if ((r = sshbuf_put(out, buf, sizeof(buf) -
       ssh->state->compression_in_stream.avail_out)) != 0)
    return r;
   break;
  case 132:





   return 0;
  case 131:
   return SSH_ERR_INVALID_FORMAT;
  case 130:
   return SSH_ERR_ALLOC_FAIL;
  case 128:
  default:
   ssh->state->compression_in_failures++;
   return SSH_ERR_INTERNAL_ERROR;
  }
 }

}
