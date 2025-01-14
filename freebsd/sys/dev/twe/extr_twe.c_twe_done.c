
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int32_t ;
struct twe_softc {int twe_state; struct twe_request** twe_lookup; } ;
struct twe_request {scalar_t__ tr_status; } ;
struct TYPE_8__ {int status; int request_id; } ;
struct TYPE_10__ {TYPE_2__ generic; } ;
struct TYPE_7__ {size_t response_id; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_3__ TWE_Response_Queue ;
typedef TYPE_4__ TWE_Command ;


 scalar_t__ TWE_CMD_BUSY ;
 scalar_t__ TWE_CMD_COMPLETE ;
 TYPE_4__* TWE_FIND_COMMAND (struct twe_request*) ;
 TYPE_3__ TWE_RESPONSE_QUEUE (struct twe_softc*) ;
 int TWE_STATE_CTLR_BUSY ;
 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_RESPONSE_QUEUE_EMPTY ;
 int debug (int,char*,int ,int ) ;
 int debug_called (int) ;
 int twe_check_bits (struct twe_softc*,int) ;
 int twe_complete (struct twe_softc*) ;
 int twe_enqueue_complete (struct twe_request*) ;
 int twe_printf (struct twe_softc*,char*) ;
 int twe_remove_busy (struct twe_request*) ;
 int twe_startio (struct twe_softc*) ;

__attribute__((used)) static void
twe_done(struct twe_softc *sc, int startio)
{
    TWE_Response_Queue rq;
    TWE_Command *cmd;
    struct twe_request *tr;
    int found;
    u_int32_t status_reg;

    debug_called(5);


    found = 0;
    for (;;) {
 status_reg = TWE_STATUS(sc);
 twe_check_bits(sc, status_reg);

 if (!(status_reg & TWE_STATUS_RESPONSE_QUEUE_EMPTY)) {
     found = 1;
     rq = TWE_RESPONSE_QUEUE(sc);
     tr = sc->twe_lookup[rq.u.response_id];
     cmd = TWE_FIND_COMMAND(tr);
     if (tr->tr_status != TWE_CMD_BUSY)
  twe_printf(sc, "completion event for nonbusy command\n");
     tr->tr_status = TWE_CMD_COMPLETE;
     debug(3, "completed request id %d with status %d",
    cmd->generic.request_id, cmd->generic.status);

     twe_remove_busy(tr);
     twe_enqueue_complete(tr);
     sc->twe_state &= ~TWE_STATE_CTLR_BUSY;
 } else {
     break;
 }
    }


    if (found && startio)
 twe_startio(sc);


    twe_complete(sc);
}
