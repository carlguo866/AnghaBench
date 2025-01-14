
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cc770_priv {int* obj_flags; int control_normal_mode; } ;
struct TYPE_2__ {int ctrl0; int ctrl1; } ;


 int ARRAY_SIZE (int*) ;
 int CC770_OBJ_FLAG_RX ;
 int CPUUPD_RES ;
 int CTRL_EAF ;
 int INTPND_RES ;
 int MSGLST_RES ;
 int MSGVAL_RES ;
 int NEWDAT_RES ;
 int RMTPND_RES ;
 int RXIE_RES ;
 int TXIE_RES ;
 int TXRQST_RES ;
 int cc770_write_reg (struct cc770_priv const*,int ,int) ;
 TYPE_1__* msgobj ;
 int obj2msgobj (int) ;

__attribute__((used)) static void disable_all_objs(const struct cc770_priv *priv)
{
 int o, mo;

 for (o = 0; o < ARRAY_SIZE(priv->obj_flags); o++) {
  mo = obj2msgobj(o);

  if (priv->obj_flags[o] & CC770_OBJ_FLAG_RX) {
   if (o > 0 && priv->control_normal_mode & CTRL_EAF)
    continue;

   cc770_write_reg(priv, msgobj[mo].ctrl1,
     NEWDAT_RES | MSGLST_RES |
     TXRQST_RES | RMTPND_RES);
   cc770_write_reg(priv, msgobj[mo].ctrl0,
     MSGVAL_RES | TXIE_RES |
     RXIE_RES | INTPND_RES);
  } else {

   cc770_write_reg(priv, msgobj[mo].ctrl1,
     RMTPND_RES | TXRQST_RES |
     CPUUPD_RES | NEWDAT_RES);
   cc770_write_reg(priv, msgobj[mo].ctrl0,
     MSGVAL_RES | TXIE_RES |
     RXIE_RES | INTPND_RES);
  }
 }
}
