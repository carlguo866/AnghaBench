
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ldo_ena; scalar_t__ reset; } ;
struct wm2200_priv {TYPE_1__ pdata; } ;
struct i2c_client {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct wm2200_priv*) ;
 int gpio_set_value_cansleep (scalar_t__,int ) ;
 struct wm2200_priv* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int wm2200_i2c_remove(struct i2c_client *i2c)
{
 struct wm2200_priv *wm2200 = i2c_get_clientdata(i2c);

 if (i2c->irq)
  free_irq(i2c->irq, wm2200);
 if (wm2200->pdata.reset)
  gpio_set_value_cansleep(wm2200->pdata.reset, 0);
 if (wm2200->pdata.ldo_ena)
  gpio_set_value_cansleep(wm2200->pdata.ldo_ena, 0);

 return 0;
}
