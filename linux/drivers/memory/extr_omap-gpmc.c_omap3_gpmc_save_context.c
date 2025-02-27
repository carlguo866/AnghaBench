
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cs_context; void* prefetch_control; void* prefetch_config2; void* prefetch_config1; void* config; void* timeout_ctrl; void* irqenable; void* sysconfig; } ;
struct TYPE_3__ {void* config7; void* config6; void* config5; void* config4; void* config3; void* config2; void* config1; scalar_t__ is_valid; } ;


 int GPMC_CONFIG ;
 int GPMC_CS_CONFIG1 ;
 int GPMC_CS_CONFIG2 ;
 int GPMC_CS_CONFIG3 ;
 int GPMC_CS_CONFIG4 ;
 int GPMC_CS_CONFIG5 ;
 int GPMC_CS_CONFIG6 ;
 int GPMC_CS_CONFIG7 ;
 int GPMC_IRQENABLE ;
 int GPMC_PREFETCH_CONFIG1 ;
 int GPMC_PREFETCH_CONFIG2 ;
 int GPMC_PREFETCH_CONTROL ;
 int GPMC_SYSCONFIG ;
 int GPMC_TIMEOUT_CONTROL ;
 int gpmc_base ;
 TYPE_2__ gpmc_context ;
 scalar_t__ gpmc_cs_mem_enabled (int) ;
 int gpmc_cs_num ;
 void* gpmc_cs_read_reg (int,int ) ;
 void* gpmc_read_reg (int ) ;

void omap3_gpmc_save_context(void)
{
 int i;

 if (!gpmc_base)
  return;

 gpmc_context.sysconfig = gpmc_read_reg(GPMC_SYSCONFIG);
 gpmc_context.irqenable = gpmc_read_reg(GPMC_IRQENABLE);
 gpmc_context.timeout_ctrl = gpmc_read_reg(GPMC_TIMEOUT_CONTROL);
 gpmc_context.config = gpmc_read_reg(GPMC_CONFIG);
 gpmc_context.prefetch_config1 = gpmc_read_reg(GPMC_PREFETCH_CONFIG1);
 gpmc_context.prefetch_config2 = gpmc_read_reg(GPMC_PREFETCH_CONFIG2);
 gpmc_context.prefetch_control = gpmc_read_reg(GPMC_PREFETCH_CONTROL);
 for (i = 0; i < gpmc_cs_num; i++) {
  gpmc_context.cs_context[i].is_valid = gpmc_cs_mem_enabled(i);
  if (gpmc_context.cs_context[i].is_valid) {
   gpmc_context.cs_context[i].config1 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG1);
   gpmc_context.cs_context[i].config2 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG2);
   gpmc_context.cs_context[i].config3 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG3);
   gpmc_context.cs_context[i].config4 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG4);
   gpmc_context.cs_context[i].config5 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG5);
   gpmc_context.cs_context[i].config6 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG6);
   gpmc_context.cs_context[i].config7 =
    gpmc_cs_read_reg(i, GPMC_CS_CONFIG7);
  }
 }
}
