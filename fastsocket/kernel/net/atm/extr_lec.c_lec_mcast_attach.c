
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_priv {int dummy; } ;
struct atm_vcc {scalar_t__ proto_data; } ;


 int EINVAL ;
 int MAX_LEC_ITF ;
 scalar_t__* dev_lec ;
 int lec_mcast_make (struct lec_priv*,struct atm_vcc*) ;
 scalar_t__ netdev_priv (scalar_t__) ;

__attribute__((used)) static int lec_mcast_attach(struct atm_vcc *vcc, int arg)
{
 if (arg < 0 || arg >= MAX_LEC_ITF || !dev_lec[arg])
  return -EINVAL;
 vcc->proto_data = dev_lec[arg];
 return lec_mcast_make((struct lec_priv *)netdev_priv(dev_lec[arg]),
    vcc);
}
