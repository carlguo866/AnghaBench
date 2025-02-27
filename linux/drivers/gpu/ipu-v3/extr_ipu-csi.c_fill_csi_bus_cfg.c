
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int field; int code; } ;
struct v4l2_mbus_config {int type; int flags; } ;
struct ipu_csi_bus_config {int ext_vsync; int vsync_pol; int hsync_pol; int pixclk_pol; int clk_mode; } ;


 int IPU_CSI_CLK_MODE_CCIR656_INTERLACED ;
 int IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE ;
 int IPU_CSI_CLK_MODE_GATED_CLK ;
 int IPU_CSI_CLK_MODE_NONGATED_CLK ;
 int V4L2_FIELD_ALTERNATE ;
 int V4L2_FIELD_HAS_BOTH (int ) ;


 int V4L2_MBUS_HSYNC_ACTIVE_LOW ;

 int V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int mbus_code_to_bus_cfg (struct ipu_csi_bus_config*,int ,int) ;
 int memset (struct ipu_csi_bus_config*,int ,int) ;

__attribute__((used)) static int fill_csi_bus_cfg(struct ipu_csi_bus_config *csicfg,
       const struct v4l2_mbus_config *mbus_cfg,
       const struct v4l2_mbus_framefmt *mbus_fmt)
{
 int ret;

 memset(csicfg, 0, sizeof(*csicfg));

 ret = mbus_code_to_bus_cfg(csicfg, mbus_fmt->code, mbus_cfg->type);
 if (ret < 0)
  return ret;

 switch (mbus_cfg->type) {
 case 128:
  csicfg->ext_vsync = 1;
  csicfg->vsync_pol = (mbus_cfg->flags &
         V4L2_MBUS_VSYNC_ACTIVE_LOW) ? 1 : 0;
  csicfg->hsync_pol = (mbus_cfg->flags &
         V4L2_MBUS_HSYNC_ACTIVE_LOW) ? 1 : 0;
  csicfg->pixclk_pol = (mbus_cfg->flags &
          V4L2_MBUS_PCLK_SAMPLE_FALLING) ? 1 : 0;
  csicfg->clk_mode = IPU_CSI_CLK_MODE_GATED_CLK;
  break;
 case 130:
  csicfg->ext_vsync = 0;
  if (V4L2_FIELD_HAS_BOTH(mbus_fmt->field) ||
      mbus_fmt->field == V4L2_FIELD_ALTERNATE)
   csicfg->clk_mode = IPU_CSI_CLK_MODE_CCIR656_INTERLACED;
  else
   csicfg->clk_mode = IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE;
  break;
 case 129:




  csicfg->clk_mode = IPU_CSI_CLK_MODE_NONGATED_CLK;
  break;
 default:

  break;
 }

 return 0;
}
