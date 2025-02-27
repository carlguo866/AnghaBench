
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trn_conf {int vm_pgt_phys; int member_0; } ;
struct hw {scalar_t__ model; } ;
struct daio_conf {int msr; int member_0; } ;
struct dac_conf {int msr; int member_0; } ;
struct card_conf {int msr; int vm_pgt_phys; int rsr; } ;
struct adc_conf {scalar_t__ mic20db; int input; int msr; int member_0; } ;


 int ADC_LINEIN ;
 scalar_t__ CTSB1270 ;
 int GCTL_DBP ;
 int GCTL_DPC ;
 int GCTL_FBP ;
 int GCTL_TBP ;
 int GIE ;
 int GLOBAL_CNTL_GCTL ;
 int GPIO_CTRL ;
 int MIXER_AR_ENABLE ;
 int SRC_IP ;
 int SRC_MCTL ;
 int hw_adc_init (struct hw*,struct adc_conf*) ;
 int hw_auto_init (struct hw*) ;
 int hw_card_start (struct hw*) ;
 int hw_dac_init (struct hw*,struct dac_conf*) ;
 int hw_daio_init (struct hw*,struct daio_conf*) ;
 int hw_pll_init (struct hw*,int ) ;
 void* hw_read_20kx (struct hw*,int ) ;
 int hw_trn_init (struct hw*,struct trn_conf*) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int set_field (unsigned int*,int ,int) ;

__attribute__((used)) static int hw_card_init(struct hw *hw, struct card_conf *info)
{
 int err;
 unsigned int gctl;
 u32 data = 0;
 struct dac_conf dac_info = {0};
 struct adc_conf adc_info = {0};
 struct daio_conf daio_info = {0};
 struct trn_conf trn_info = {0};



 err = hw_card_start(hw);
 if (err)
  return err;


 err = hw_pll_init(hw, info->rsr);
 if (err < 0)
  return err;


 err = hw_auto_init(hw);
 if (err < 0)
  return err;

 gctl = hw_read_20kx(hw, GLOBAL_CNTL_GCTL);
 set_field(&gctl, GCTL_DBP, 1);
 set_field(&gctl, GCTL_TBP, 1);
 set_field(&gctl, GCTL_FBP, 1);
 set_field(&gctl, GCTL_DPC, 0);
 hw_write_20kx(hw, GLOBAL_CNTL_GCTL, gctl);


 hw_write_20kx(hw, GIE, 0);

 hw_write_20kx(hw, SRC_IP, 0);

 if (hw->model != CTSB1270) {





  hw_write_20kx(hw, GPIO_CTRL, 0xD802);
 } else {
  hw_write_20kx(hw, GPIO_CTRL, 0x9E5F);
 }

 hw_write_20kx(hw, MIXER_AR_ENABLE, 0x01);

 trn_info.vm_pgt_phys = info->vm_pgt_phys;
 err = hw_trn_init(hw, &trn_info);
 if (err < 0)
  return err;

 daio_info.msr = info->msr;
 err = hw_daio_init(hw, &daio_info);
 if (err < 0)
  return err;

 dac_info.msr = info->msr;
 err = hw_dac_init(hw, &dac_info);
 if (err < 0)
  return err;

 adc_info.msr = info->msr;
 adc_info.input = ADC_LINEIN;
 adc_info.mic20db = 0;
 err = hw_adc_init(hw, &adc_info);
 if (err < 0)
  return err;

 data = hw_read_20kx(hw, SRC_MCTL);
 data |= 0x1;
 hw_write_20kx(hw, SRC_MCTL, data);

 return 0;
}
