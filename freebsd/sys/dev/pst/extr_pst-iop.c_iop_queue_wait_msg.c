
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct iop_softc {int obase; int phys_obase; int mtx; TYPE_2__* reg; } ;
struct iop_request {int mfa; TYPE_1__* reply; } ;
struct i2o_single_reply {int status; } ;
struct i2o_basic_message {int transaction_context; int initiator_context; } ;
struct TYPE_4__ {int oqueue_intr_mask; int iqueue; int oqueue; } ;
struct TYPE_3__ {int status; } ;


 int DELAY (int) ;
 int PRIBIO ;
 int hz ;
 scalar_t__ iop_done ;
 int iop_free_mfa (struct iop_softc*,int) ;
 scalar_t__ msleep (struct iop_request*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*) ;

int
iop_queue_wait_msg(struct iop_softc *sc, int mfa, struct i2o_basic_message *msg)
{
    struct i2o_single_reply *reply;
    struct iop_request request;
    u_int32_t out_mfa;
    int status, timeout = 10000;

    mtx_lock(&sc->mtx);
    if (!(sc->reg->oqueue_intr_mask & 0x08)) {
        msg->transaction_context = (u_int32_t)&request;
        msg->initiator_context = (u_int32_t)iop_done;
        sc->reg->iqueue = mfa;
        if (msleep(&request, &sc->mtx, PRIBIO, "pstwt", 10 * hz)) {
     printf("pstiop: timeout waiting for message response\n");
     iop_free_mfa(sc, mfa);
     mtx_unlock(&sc->mtx);
     return -1;
 }
        status = request.reply->status;
        sc->reg->oqueue = request.mfa;
    }
    else {
 sc->reg->iqueue = mfa;
 while (--timeout && ((out_mfa = sc->reg->oqueue) == 0xffffffff))
     DELAY(1000);
 if (!timeout) {
     printf("pstiop: timeout waiting for message response\n");
     iop_free_mfa(sc, mfa);
     mtx_unlock(&sc->mtx);
     return -1;
 }
 reply = (struct i2o_single_reply *)(sc->obase+(out_mfa-sc->phys_obase));
 status = reply->status;
 sc->reg->oqueue = out_mfa;
    }
    mtx_unlock(&sc->mtx);
    return status;
}
