
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* sccrx; char* scctx; TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_4__ {scalar_t__ type; int port; } ;


 int AM_A ;
 int AM_IMR ;
 int AM_MICR ;
 scalar_t__ B_TAU2_E1 ;
 scalar_t__ B_TAU_E1 ;
 scalar_t__ B_TAU_E1C ;
 int IMR_RX_ALL ;
 int IMR_TX ;
 int MICR_MIE ;
 int cte_out2 (int ,int,int) ;

void ct_start_scc (ct_chan_t *c, char *rxbuf, char *txbuf)
{
 c->sccrx = rxbuf;
 c->scctx = txbuf;


 if (c->board->type != B_TAU_E1 && c->board->type != B_TAU_E1C &&
     c->board->type != B_TAU2_E1)
  return;

 cte_out2 (c->board->port, c->num ? AM_IMR : AM_IMR | AM_A,
   IMR_TX | IMR_RX_ALL);
 cte_out2 (c->board->port, AM_MICR, MICR_MIE);
}
