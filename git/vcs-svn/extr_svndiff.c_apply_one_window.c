
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
struct window {TYPE_1__ out; int data; int instructions; } ;
struct sliding_view {int dummy; } ;
struct line_buffer {int dummy; } ;
typedef int off_t ;
typedef int FILE ;


 struct window WINDOW_INIT (struct sliding_view*) ;
 scalar_t__ apply_window_in_core (struct window*) ;
 int assert (int *) ;
 int error (char*) ;
 scalar_t__ read_chunk (struct line_buffer*,int *,int *,size_t) ;
 scalar_t__ read_length (struct line_buffer*,size_t*,int *) ;
 int strbuf_grow (TYPE_1__*,size_t) ;
 int window_release (struct window*) ;
 scalar_t__ write_strbuf (TYPE_1__*,int *) ;

__attribute__((used)) static int apply_one_window(struct line_buffer *delta, off_t *delta_len,
       struct sliding_view *preimage, FILE *out)
{
 int rv = -1;
 struct window ctx = WINDOW_INIT(preimage);
 size_t out_len;
 size_t instructions_len;
 size_t data_len;
 assert(delta_len);


 if (read_length(delta, &out_len, delta_len) ||
     read_length(delta, &instructions_len, delta_len) ||
     read_length(delta, &data_len, delta_len) ||
     read_chunk(delta, delta_len, &ctx.instructions, instructions_len) ||
     read_chunk(delta, delta_len, &ctx.data, data_len))
  goto error_out;
 strbuf_grow(&ctx.out, out_len);
 if (apply_window_in_core(&ctx))
  goto error_out;
 if (ctx.out.len != out_len) {
  rv = error("invalid delta: incorrect postimage length");
  goto error_out;
 }
 if (write_strbuf(&ctx.out, out))
  goto error_out;
 rv = 0;
error_out:
 window_release(&ctx);
 return rv;
}
