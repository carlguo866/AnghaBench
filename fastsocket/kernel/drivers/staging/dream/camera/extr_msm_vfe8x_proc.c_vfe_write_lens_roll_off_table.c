
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct vfe_cmd_roll_off_config {scalar_t__* deltaTableR; scalar_t__* deltaTableB; scalar_t__* deltaTableGb; scalar_t__* deltaTableGr; scalar_t__* initTableR; scalar_t__* initTableB; scalar_t__* initTableGb; scalar_t__* initTableGr; } ;
typedef int int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_2__ {scalar_t__ vfebase; } ;


 int LENS_ROLL_OFF_DELTA_TABLE_OFFSET ;
 int ROLLOFF_RAM ;
 scalar_t__ VFE_DMI_ADDR ;
 scalar_t__ VFE_DMI_CFG ;
 int VFE_DMI_CFG_DEFAULT ;
 scalar_t__ VFE_DMI_DATA_LO ;
 scalar_t__ VFE_ROLL_OFF_DELTA_TABLE_SIZE ;
 scalar_t__ VFE_ROLL_OFF_INIT_TABLE_SIZE ;
 TYPE_1__* ctrl ;
 int vfe_program_dmi_cfg (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void vfe_write_lens_roll_off_table(
 struct vfe_cmd_roll_off_config *in)
{
 uint16_t i;
 uint32_t data;

 uint16_t *initGr = in->initTableGr;
 uint16_t *initGb = in->initTableGb;
 uint16_t *initB = in->initTableB;
 uint16_t *initR = in->initTableR;

 int16_t *pDeltaGr = in->deltaTableGr;
 int16_t *pDeltaGb = in->deltaTableGb;
 int16_t *pDeltaB = in->deltaTableB;
 int16_t *pDeltaR = in->deltaTableR;

 vfe_program_dmi_cfg(ROLLOFF_RAM);


 for (i = 0; i < VFE_ROLL_OFF_INIT_TABLE_SIZE; i++) {
  data = (((uint32_t)(*initR)) & 0x0000FFFF) |
   (((uint32_t)(*initGr)) << 16);
  initR++;
  initGr++;

  writel(data, ctrl->vfebase + VFE_DMI_DATA_LO);

  data = (((uint32_t)(*initB)) & 0x0000FFFF) |
   (((uint32_t)(*initGr))<<16);
  initB++;
  initGb++;

  writel(data, ctrl->vfebase + VFE_DMI_DATA_LO);
 }



 writel(LENS_ROLL_OFF_DELTA_TABLE_OFFSET,
  ctrl->vfebase + VFE_DMI_ADDR);


 for (i = 0; i < VFE_ROLL_OFF_DELTA_TABLE_SIZE; i++) {
  data = (((int32_t)(*pDeltaR)) & 0x0000FFFF) |
   (((int32_t)(*pDeltaGr))<<16);
  pDeltaR++;
  pDeltaGr++;

  writel(data, ctrl->vfebase + VFE_DMI_DATA_LO);

  data = (((int32_t)(*pDeltaB)) & 0x0000FFFF) |
   (((int32_t)(*pDeltaGb))<<16);
  pDeltaB++;
  pDeltaGb++;

  writel(data, ctrl->vfebase + VFE_DMI_DATA_LO);
 }





 writel(VFE_DMI_CFG_DEFAULT, ctrl->vfebase + VFE_DMI_CFG);
}
