
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int const vif_num; } ;
struct ar9170 {TYPE_1__ fw; } ;


 scalar_t__ AR9170_MAC_REG_ACK_TABLE ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int carl9170_set_mac_reg (struct ar9170*,scalar_t__,int const*) ;

int carl9170_mod_virtual_mac(struct ar9170 *ar, const unsigned int id,
        const u8 *mac)
{
 if (WARN_ON(id >= ar->fw.vif_num))
  return -EINVAL;

 return carl9170_set_mac_reg(ar,
  AR9170_MAC_REG_ACK_TABLE + (id - 1) * 8, mac);
}
