
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct phy_reg {int member_0; int member_1; } ;


 int rtl_patchphy (struct rtl8169_private*,int,int) ;
 int rtl_writephy_batch (struct rtl8169_private*,struct phy_reg const*) ;

__attribute__((used)) static void rtl8168d_4_hw_phy_config(struct rtl8169_private *tp)
{
 static const struct phy_reg phy_reg_init[] = {
  { 0x1f, 0x0001 },
  { 0x17, 0x0cc0 },

  { 0x1f, 0x0007 },
  { 0x1e, 0x002d },
  { 0x18, 0x0040 },
  { 0x1f, 0x0000 }
 };

 rtl_writephy_batch(tp, phy_reg_init);
 rtl_patchphy(tp, 0x0d, 1 << 5);
}
