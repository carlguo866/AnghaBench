
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_mruby_http_request_context_t {TYPE_2__* ctx; int receiver; } ;
typedef int mrb_value ;
struct TYPE_4__ {TYPE_1__* shared; } ;
struct TYPE_3__ {int mrb; } ;


 int assert (int ) ;
 int mrb_gc_register (int ,int ) ;
 int mrb_nil_p (int ) ;

__attribute__((used)) static void attach_receiver(struct st_h2o_mruby_http_request_context_t *ctx, mrb_value receiver)
{
    assert(mrb_nil_p(ctx->receiver));
    ctx->receiver = receiver;
    mrb_gc_register(ctx->ctx->shared->mrb, receiver);
}
