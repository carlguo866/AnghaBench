
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ prod; } ;


 scalar_t__ LGS8GXX_PROD_LGS8G75 ;
 int wait_reg_mask (struct lgs8gxx_state*,int,int,int,int,int) ;

__attribute__((used)) static int lgs8gxx_is_autodetect_finished(struct lgs8gxx_state *priv,
       u8 *finished)
{
 int ret = 0;
 u8 reg, mask, val;

 if (priv->config->prod == LGS8GXX_PROD_LGS8G75) {
  reg = 0x1f;
  mask = 0xC0;
  val = 0x80;
 } else {
  reg = 0xA4;
  mask = 0x03;
  val = 0x01;
 }

 ret = wait_reg_mask(priv, reg, mask, val, 10, 20);
 *finished = (ret == 0) ? 1 : 0;

 return 0;
}
