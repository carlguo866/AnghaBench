
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8804_priv {int regmap; } ;


 int WM8804_RST_DEVID1 ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int wm8804_soft_reset(struct wm8804_priv *wm8804)
{
 return regmap_write(wm8804->regmap, WM8804_RST_DEVID1, 0x0);
}
