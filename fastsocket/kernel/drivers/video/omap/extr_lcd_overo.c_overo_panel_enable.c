
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 int LCD_ENABLE ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int overo_panel_enable(struct lcd_panel *panel)
{
 gpio_set_value(LCD_ENABLE, 1);
 return 0;
}
