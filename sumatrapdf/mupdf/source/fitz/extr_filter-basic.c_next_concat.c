
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct concat_filter {size_t current; size_t count; int ws_buf; scalar_t__ pad; TYPE_3__** chain; } ;
struct TYPE_5__ {scalar_t__ wp; int error; int * rp; scalar_t__ pos; scalar_t__ state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_6__ {scalar_t__ wp; scalar_t__ rp; scalar_t__ error; } ;


 int EOF ;
 size_t fz_available (int *,TYPE_3__*,size_t) ;
 int fz_drop_stream (int *,TYPE_3__*) ;

__attribute__((used)) static int
next_concat(fz_context *ctx, fz_stream *stm, size_t max)
{
 struct concat_filter *state = (struct concat_filter *)stm->state;
 size_t n;

 while (state->current < state->count)
 {

  if (stm->wp == state->chain[state->current]->wp)
   state->chain[state->current]->rp = stm->wp;
  n = fz_available(ctx, state->chain[state->current], max);
  if (n)
  {
   stm->rp = state->chain[state->current]->rp;
   stm->wp = state->chain[state->current]->wp;
   stm->pos += n;
   return *stm->rp++;
  }
  else
  {
   if (state->chain[state->current]->error)
   {
    stm->error = 1;
    break;
   }
   state->current++;
   fz_drop_stream(ctx, state->chain[state->current-1]);
   if (state->pad)
   {
    stm->rp = (&state->ws_buf)+1;
    stm->wp = stm->rp + 1;
    stm->pos++;
    return 32;
   }
  }
 }

 stm->rp = stm->wp;

 return EOF;
}
