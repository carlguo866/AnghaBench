
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {TYPE_4__* funcs; } ;
struct TYPE_7__ {struct timing_generator* tg; } ;
struct pipe_ctx {TYPE_3__ stream_res; struct dc_stream_state* stream; } ;
struct dc_stream_state {int dummy; } ;
struct dc {TYPE_2__* current_state; } ;
struct TYPE_8__ {int (* get_crc ) (struct timing_generator*,int *,int *,int *) ;} ;
struct TYPE_5__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_6__ {TYPE_1__ res_ctx; } ;


 int DC_LOG_WARNING (char*) ;
 int MAX_PIPES ;
 int stub1 (struct timing_generator*,int *,int *,int *) ;

bool dc_stream_get_crc(struct dc *dc, struct dc_stream_state *stream,
         uint32_t *r_cr, uint32_t *g_y, uint32_t *b_cb)
{
 int i;
 struct pipe_ctx *pipe;
 struct timing_generator *tg;

 for (i = 0; i < MAX_PIPES; i++) {
  pipe = &dc->current_state->res_ctx.pipe_ctx[i];
  if (pipe->stream == stream)
   break;
 }

 if (i == MAX_PIPES)
  return 0;

 tg = pipe->stream_res.tg;

 if (tg->funcs->get_crc)
  return tg->funcs->get_crc(tg, r_cr, g_y, b_cb);
 DC_LOG_WARNING("CRC capture not supported.");
 return 0;
}
