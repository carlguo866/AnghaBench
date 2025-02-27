
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum da8xx_frame_complete { ____Placeholder_da8xx_frame_complete } da8xx_frame_complete ;


 int DA8XX_FRAME_WAIT ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_RASTER_ENABLE ;
 scalar_t__ LCD_VERSION_2 ;
 scalar_t__ frame_done_flag ;
 int frame_done_wq ;
 scalar_t__ lcd_revision ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static void lcd_disable_raster(enum da8xx_frame_complete wait_for_frame_done)
{
 u32 reg;
 int ret;

 reg = lcdc_read(LCD_RASTER_CTRL_REG);
 if (reg & LCD_RASTER_ENABLE)
  lcdc_write(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
 else

  return;

 if ((wait_for_frame_done == DA8XX_FRAME_WAIT) &&
   (lcd_revision == LCD_VERSION_2)) {
  frame_done_flag = 0;
  ret = wait_event_interruptible_timeout(frame_done_wq,
    frame_done_flag != 0,
    msecs_to_jiffies(50));
  if (ret == 0)
   pr_err("LCD Controller timed out\n");
 }
}
