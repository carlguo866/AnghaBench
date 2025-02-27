
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {scalar_t__ event; int event_work; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 scalar_t__ RPORT_EV_NONE ;
 scalar_t__ RPORT_EV_READY ;
 int RPORT_ST_READY ;
 int fc_rport_state_enter (struct fc_rport_priv*,int ) ;
 int queue_work (int ,int *) ;
 int rport_event_queue ;

__attribute__((used)) static void fc_rport_enter_ready(struct fc_rport_priv *rdata)
{
 fc_rport_state_enter(rdata, RPORT_ST_READY);

 FC_RPORT_DBG(rdata, "Port is Ready\n");

 if (rdata->event == RPORT_EV_NONE)
  queue_work(rport_event_queue, &rdata->event_work);
 rdata->event = RPORT_EV_READY;
}
