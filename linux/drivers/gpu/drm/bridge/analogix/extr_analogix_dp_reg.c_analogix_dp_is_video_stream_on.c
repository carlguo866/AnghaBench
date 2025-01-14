
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {int dev; scalar_t__ reg_base; } ;


 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ;
 int EINVAL ;
 int STRM_VALID ;
 int dev_dbg (int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int analogix_dp_is_video_stream_on(struct analogix_dp_device *dp)
{
 u32 reg;

 reg = readl(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
 writel(reg, dp->reg_base + ANALOGIX_DP_SYS_CTL_3);

 reg = readl(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
 if (!(reg & STRM_VALID)) {
  dev_dbg(dp->dev, "Input video stream is not detected.\n");
  return -EINVAL;
 }

 return 0;
}
