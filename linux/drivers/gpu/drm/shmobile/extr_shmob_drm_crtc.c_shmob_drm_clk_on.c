
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_device {scalar_t__ clock; } ;


 int clk_prepare_enable (scalar_t__) ;

__attribute__((used)) static int shmob_drm_clk_on(struct shmob_drm_device *sdev)
{
 int ret;

 if (sdev->clock) {
  ret = clk_prepare_enable(sdev->clock);
  if (ret < 0)
   return ret;
 }

 return 0;
}
