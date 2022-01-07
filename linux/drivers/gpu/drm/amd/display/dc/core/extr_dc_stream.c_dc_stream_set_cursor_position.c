
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource_context {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_7__ {int dpp; int ipp; int xfm; int hubp; int mi; } ;
struct pipe_ctx {TYPE_3__ plane_res; int plane_state; struct dc_stream_state* stream; } ;
struct dc_cursor_position {int dummy; } ;
struct dc_stream_state {struct dc_cursor_position cursor_position; TYPE_1__* ctx; } ;
struct TYPE_8__ {int (* pipe_control_lock ) (struct dc*,struct pipe_ctx*,int) ;int (* set_cursor_position ) (struct pipe_ctx*) ;} ;
struct dc {TYPE_4__ hwss; TYPE_2__* current_state; } ;
struct TYPE_6__ {struct resource_context res_ctx; } ;
struct TYPE_5__ {struct dc* dc; } ;


 int MAX_PIPES ;
 int delay_cursor_until_vupdate (struct pipe_ctx*,struct dc*) ;
 int dm_error (char*) ;
 int stub1 (struct dc*,struct pipe_ctx*,int) ;
 int stub2 (struct pipe_ctx*) ;
 int stub3 (struct dc*,struct pipe_ctx*,int) ;

bool dc_stream_set_cursor_position(
 struct dc_stream_state *stream,
 const struct dc_cursor_position *position)
{
 int i;
 struct dc *core_dc;
 struct resource_context *res_ctx;
 struct pipe_ctx *pipe_to_program = ((void*)0);

 if (((void*)0) == stream) {
  dm_error("DC: dc_stream is NULL!\n");
  return 0;
 }

 if (((void*)0) == position) {
  dm_error("DC: cursor position is NULL!\n");
  return 0;
 }

 core_dc = stream->ctx->dc;
 res_ctx = &core_dc->current_state->res_ctx;
 stream->cursor_position = *position;

 for (i = 0; i < MAX_PIPES; i++) {
  struct pipe_ctx *pipe_ctx = &res_ctx->pipe_ctx[i];

  if (pipe_ctx->stream != stream ||
    (!pipe_ctx->plane_res.mi && !pipe_ctx->plane_res.hubp) ||
    !pipe_ctx->plane_state ||
    (!pipe_ctx->plane_res.xfm && !pipe_ctx->plane_res.dpp) ||
    (!pipe_ctx->plane_res.ipp && !pipe_ctx->plane_res.dpp))
   continue;

  if (!pipe_to_program) {
   pipe_to_program = pipe_ctx;

   delay_cursor_until_vupdate(pipe_ctx, core_dc);
   core_dc->hwss.pipe_control_lock(core_dc, pipe_to_program, 1);
  }

  core_dc->hwss.set_cursor_position(pipe_ctx);
 }

 if (pipe_to_program)
  core_dc->hwss.pipe_control_lock(core_dc, pipe_to_program, 0);

 return 1;
}
