
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm2000_priv {scalar_t__ anc_mode; int anc_download_size; int supplies; scalar_t__ speech_clarity; int regmap; int anc_download; int mclk; } ;
struct i2c_client {int dev; } ;


 scalar_t__ ANC_ACTIVE ;
 scalar_t__ ANC_OFF ;
 int EINVAL ;
 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ WARN_ON (int) ;
 int WM2000_ANC_ENG_CLR ;
 int WM2000_ANC_ENG_IDLE ;
 int WM2000_ANC_ENG_SET ;
 int WM2000_ANC_INT_N_CLR ;
 int WM2000_MCLK_DIV2_ENA_CLR ;
 int WM2000_MCLK_DIV2_ENA_SET ;
 int WM2000_MODE_ANA_SEQ_INCLUDE ;
 int WM2000_MODE_MOUSE_ENABLE ;
 int WM2000_MODE_THERMAL_ENABLE ;
 int WM2000_NUM_SUPPLIES ;
 int WM2000_RAM_SET ;
 int WM2000_REG_ANA_VMID_PU_TIME ;
 int WM2000_REG_ANC_STAT ;
 int WM2000_REG_SPEECH_CLARITY ;
 int WM2000_REG_SYS_CTL2 ;
 int WM2000_REG_SYS_MODE_CNTRL ;
 int WM2000_REG_SYS_START0 ;
 int WM2000_REG_SYS_START1 ;
 int WM2000_REG_SYS_STATUS ;
 unsigned int WM2000_SPEECH_CLARITY ;
 int WM2000_STATUS_BOOT_COMPLETE ;
 int WM2000_STATUS_MOUSE_ACTIVE ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 struct wm2000_priv* dev_get_drvdata (int *) ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int wm2000_poll_bit (struct i2c_client*,int ,int ) ;
 int wm2000_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int wm2000_power_up(struct i2c_client *i2c, int analogue)
{
 struct wm2000_priv *wm2000 = dev_get_drvdata(&i2c->dev);
 unsigned long rate;
 unsigned int val;
 int ret;

 if (WARN_ON(wm2000->anc_mode != ANC_OFF))
  return -EINVAL;

 dev_dbg(&i2c->dev, "Beginning power up\n");

 ret = regulator_bulk_enable(WM2000_NUM_SUPPLIES, wm2000->supplies);
 if (ret != 0) {
  dev_err(&i2c->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 rate = clk_get_rate(wm2000->mclk);
 if (rate <= 13500000) {
  dev_dbg(&i2c->dev, "Disabling MCLK divider\n");
  wm2000_write(i2c, WM2000_REG_SYS_CTL2,
        WM2000_MCLK_DIV2_ENA_CLR);
 } else {
  dev_dbg(&i2c->dev, "Enabling MCLK divider\n");
  wm2000_write(i2c, WM2000_REG_SYS_CTL2,
        WM2000_MCLK_DIV2_ENA_SET);
 }

 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_CLR);
 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_ENG_SET);


 if (!wm2000_poll_bit(i2c, WM2000_REG_ANC_STAT,
        WM2000_ANC_ENG_IDLE)) {
  dev_err(&i2c->dev, "ANC engine failed to reset\n");
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return -ETIMEDOUT;
 }

 if (!wm2000_poll_bit(i2c, WM2000_REG_SYS_STATUS,
        WM2000_STATUS_BOOT_COMPLETE)) {
  dev_err(&i2c->dev, "ANC engine failed to initialise\n");
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return -ETIMEDOUT;
 }

 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_RAM_SET);



 dev_dbg(&i2c->dev, "Downloading %d bytes\n",
  wm2000->anc_download_size - 2);

 ret = i2c_master_send(i2c, wm2000->anc_download,
         wm2000->anc_download_size);
 if (ret < 0) {
  dev_err(&i2c->dev, "i2c_transfer() failed: %d\n", ret);
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return ret;
 }
 if (ret != wm2000->anc_download_size) {
  dev_err(&i2c->dev, "i2c_transfer() failed, %d != %d\n",
   ret, wm2000->anc_download_size);
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return -EIO;
 }

 dev_dbg(&i2c->dev, "Download complete\n");

 if (analogue) {
  wm2000_write(i2c, WM2000_REG_ANA_VMID_PU_TIME, 248 / 4);

  wm2000_write(i2c, WM2000_REG_SYS_MODE_CNTRL,
        WM2000_MODE_ANA_SEQ_INCLUDE |
        WM2000_MODE_MOUSE_ENABLE |
        WM2000_MODE_THERMAL_ENABLE);
 } else {
  wm2000_write(i2c, WM2000_REG_SYS_MODE_CNTRL,
        WM2000_MODE_MOUSE_ENABLE |
        WM2000_MODE_THERMAL_ENABLE);
 }

 ret = regmap_read(wm2000->regmap, WM2000_REG_SPEECH_CLARITY, &val);
 if (ret != 0) {
  dev_err(&i2c->dev, "Unable to read Speech Clarity: %d\n", ret);
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return ret;
 }
 if (wm2000->speech_clarity)
  val |= WM2000_SPEECH_CLARITY;
 else
  val &= ~WM2000_SPEECH_CLARITY;
 wm2000_write(i2c, WM2000_REG_SPEECH_CLARITY, val);

 wm2000_write(i2c, WM2000_REG_SYS_START0, 0x33);
 wm2000_write(i2c, WM2000_REG_SYS_START1, 0x02);

 wm2000_write(i2c, WM2000_REG_SYS_CTL2, WM2000_ANC_INT_N_CLR);

 if (!wm2000_poll_bit(i2c, WM2000_REG_SYS_STATUS,
        WM2000_STATUS_MOUSE_ACTIVE)) {
  dev_err(&i2c->dev, "Timed out waiting for device\n");
  regulator_bulk_disable(WM2000_NUM_SUPPLIES, wm2000->supplies);
  return -ETIMEDOUT;
 }

 dev_dbg(&i2c->dev, "ANC active\n");
 if (analogue)
  dev_dbg(&i2c->dev, "Analogue active\n");
 wm2000->anc_mode = ANC_ACTIVE;

 return 0;
}
