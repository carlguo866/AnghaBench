
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int dummy; } ;


 int DRM_INFO (char*) ;
 int DSI_FIFO_GEN_HS_CTRL_FULL ;
 int MIPI_GEN_FIFO_STAT_REG (int ) ;
 int REG_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void mdfld_wait_for_HS_CTRL_FIFO(struct drm_device *dev, u32 pipe)
{
 u32 gen_fifo_stat_reg = MIPI_GEN_FIFO_STAT_REG(pipe);
 int timeout = 0;

 udelay(500);


 while ((timeout < 20000) && (REG_READ(gen_fifo_stat_reg)
     & DSI_FIFO_GEN_HS_CTRL_FULL)) {
  udelay(100);
  timeout++;
 }
 if (timeout == 20000)
  DRM_INFO("MIPI: HS CMD FIFO was never cleared!\n");
}
