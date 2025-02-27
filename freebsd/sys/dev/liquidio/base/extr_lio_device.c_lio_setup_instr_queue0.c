
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ qpg; scalar_t__ use_qpg; int pkind; int q_no; } ;
union octeon_txpciq {TYPE_3__ s; scalar_t__ txpciq64; } ;
typedef int uint32_t ;
struct TYPE_5__ {int pkind; } ;
struct octeon_device {scalar_t__ num_iqs; TYPE_2__ pfvf_hsword; TYPE_1__** instr_queue; } ;
struct TYPE_4__ {scalar_t__ ifidx; void* app_ctx; scalar_t__ q_index; } ;


 int LIO_CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int LIO_GET_NUM_DEF_TX_DESCS_CFG (int ) ;
 int cn23xx_pf ;
 int lio_delete_instr_queue (struct octeon_device*,int ) ;
 scalar_t__ lio_init_instr_queue (struct octeon_device*,union octeon_txpciq,int ) ;

int
lio_setup_instr_queue0(struct octeon_device *oct)
{
 union octeon_txpciq txpciq;
 uint32_t iq_no = 0;
 uint32_t num_descs = 0;

 if (LIO_CN23XX_PF(oct))
  num_descs =
   LIO_GET_NUM_DEF_TX_DESCS_CFG(LIO_CHIP_CONF(oct,
           cn23xx_pf));

 oct->num_iqs = 0;

 oct->instr_queue[0]->q_index = 0;
 oct->instr_queue[0]->app_ctx = (void *)(size_t)0;
 oct->instr_queue[0]->ifidx = 0;
 txpciq.txpciq64 = 0;
 txpciq.s.q_no = iq_no;
 txpciq.s.pkind = oct->pfvf_hsword.pkind;
 txpciq.s.use_qpg = 0;
 txpciq.s.qpg = 0;
 if (lio_init_instr_queue(oct, txpciq, num_descs)) {

  lio_delete_instr_queue(oct, 0);
  return (1);
 }

 oct->num_iqs++;
 return (0);
}
