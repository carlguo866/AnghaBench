
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_m2s_comp_timeouts {void* app_timeout; void* coal_timeout; void* unack_fifo_depth; void* comp_fifo_depth; int enable_q_promotion; int sch_mode; } ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int cfg_application_ack; int cfg_coal; int cfg_1c; } ;
struct TYPE_5__ {TYPE_1__ m2s_comp; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;


 int AL_FALSE ;
 void* AL_REG_FIELD_GET (int,int ,int ) ;
 int AL_TRUE ;
 int SRR ;
 int STRICT ;
 int UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK ;
 int UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT ;
 int UDMA_M2S_COMP_CFG_1C_FORCE_RR ;
 int UDMA_M2S_COMP_CFG_1C_Q_PROMOTION ;
 int UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK ;
 int UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT ;
 int UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK ;
 int UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT ;
 void* al_reg_read32 (int *) ;

int al_udma_m2s_comp_timeouts_get(struct al_udma *udma,
     struct al_udma_m2s_comp_timeouts *conf)
{
 uint32_t reg = al_reg_read32(&udma->udma_regs->m2s.m2s_comp.cfg_1c);

 if (reg & UDMA_M2S_COMP_CFG_1C_FORCE_RR)
  conf->sch_mode = SRR;
 else
  conf->sch_mode = STRICT;

 if (reg & UDMA_M2S_COMP_CFG_1C_Q_PROMOTION)
  conf->enable_q_promotion = AL_TRUE;
 else
  conf->enable_q_promotion = AL_FALSE;

 conf->comp_fifo_depth =
     AL_REG_FIELD_GET(reg,
        UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_MASK,
        UDMA_M2S_COMP_CFG_1C_COMP_FIFO_DEPTH_SHIFT);
 conf->unack_fifo_depth =
     AL_REG_FIELD_GET(reg,
        UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_MASK,
        UDMA_M2S_COMP_CFG_1C_UNACK_FIFO_DEPTH_SHIFT);

 conf->coal_timeout = al_reg_read32(
    &udma->udma_regs->m2s.m2s_comp.cfg_coal);

 reg = al_reg_read32(
   &udma->udma_regs->m2s.m2s_comp.cfg_application_ack);

 conf->app_timeout =
     AL_REG_FIELD_GET(reg,
        UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_MASK,
        UDMA_M2S_COMP_CFG_APPLICATION_ACK_TOUT_SHIFT);

 return 0;
}
