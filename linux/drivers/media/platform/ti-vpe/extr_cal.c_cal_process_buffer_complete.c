
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int field; } ;
struct cal_ctx {TYPE_2__* next_frm; TYPE_2__* cur_frm; int sequence; TYPE_3__ m_fmt; } ;
struct TYPE_8__ {int timestamp; } ;
struct TYPE_5__ {TYPE_4__ vb2_buf; scalar_t__ sequence; int field; } ;
struct TYPE_6__ {TYPE_1__ vb; } ;


 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_4__*,int ) ;

__attribute__((used)) static inline void cal_process_buffer_complete(struct cal_ctx *ctx)
{
 ctx->cur_frm->vb.vb2_buf.timestamp = ktime_get_ns();
 ctx->cur_frm->vb.field = ctx->m_fmt.field;
 ctx->cur_frm->vb.sequence = ctx->sequence++;

 vb2_buffer_done(&ctx->cur_frm->vb.vb2_buf, VB2_BUF_STATE_DONE);
 ctx->cur_frm = ctx->next_frm;
}
