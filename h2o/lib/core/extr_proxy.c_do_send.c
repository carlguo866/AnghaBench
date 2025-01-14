
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* buf; } ;
struct rp_generator_t {TYPE_4__* src_req; scalar_t__ had_body_error; TYPE_8__* last_content_before_send; TYPE_7__ sending; TYPE_1__* client; } ;
typedef int h2o_send_state_t ;
struct TYPE_11__ {scalar_t__ len; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_14__ {scalar_t__ size; } ;
struct TYPE_12__ {int preferred_chunk_size; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_9__ {TYPE_8__** buf; } ;


 int H2O_SEND_STATE_ERROR ;
 int H2O_SEND_STATE_FINAL ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 TYPE_3__ h2o_doublebuffer_prepare (TYPE_7__*,TYPE_8__**,int ) ;
 int h2o_send (TYPE_4__*,TYPE_3__*,size_t,int ) ;

__attribute__((used)) static void do_send(struct rp_generator_t *self)
{
    h2o_iovec_t vecs[1];
    size_t veccnt;
    h2o_send_state_t ststate;

    vecs[0] = h2o_doublebuffer_prepare(&self->sending,
                                       self->last_content_before_send != ((void*)0) ? &self->last_content_before_send : self->client->buf,
                                       self->src_req->preferred_chunk_size);

    if (self->last_content_before_send != ((void*)0) && vecs[0].len == self->sending.buf->size &&
        self->last_content_before_send->size == 0) {
        veccnt = vecs[0].len != 0 ? 1 : 0;
        ststate = H2O_SEND_STATE_FINAL;
    } else {
        if (vecs[0].len == 0)
            return;
        veccnt = 1;
        ststate = H2O_SEND_STATE_IN_PROGRESS;
    }

    if (self->had_body_error)
        ststate = H2O_SEND_STATE_ERROR;

    h2o_send(self->src_req, vecs, veccnt, ststate);
}
