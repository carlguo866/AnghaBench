
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8367_port_ability {int speed; scalar_t__ duplex; scalar_t__ link; scalar_t__ rxpause; scalar_t__ txpause; scalar_t__ nway; scalar_t__ force_mode; } ;
struct rtl8366_smi {int dummy; } ;


 int REG_RMW (struct rtl8366_smi*,int ,int,int) ;
 int RTL8367_DI_FORCE_DUPLEX ;
 int RTL8367_DI_FORCE_LINK ;
 int RTL8367_DI_FORCE_MODE ;
 int RTL8367_DI_FORCE_NWAY ;
 int RTL8367_DI_FORCE_REG (int) ;
 int RTL8367_DI_FORCE_RXPAUSE ;
 int RTL8367_DI_FORCE_SPEED_MASK ;
 int RTL8367_DI_FORCE_TXPAUSE ;

__attribute__((used)) static int rtl8367_extif_set_force(struct rtl8366_smi *smi, int id,
       struct rtl8367_port_ability *pa)
{
 u32 mask;
 u32 val;
 int err;

 mask = (RTL8367_DI_FORCE_MODE |
  RTL8367_DI_FORCE_NWAY |
  RTL8367_DI_FORCE_TXPAUSE |
  RTL8367_DI_FORCE_RXPAUSE |
  RTL8367_DI_FORCE_LINK |
  RTL8367_DI_FORCE_DUPLEX |
  RTL8367_DI_FORCE_SPEED_MASK);

 val = pa->speed;
 val |= pa->force_mode ? RTL8367_DI_FORCE_MODE : 0;
 val |= pa->nway ? RTL8367_DI_FORCE_NWAY : 0;
 val |= pa->txpause ? RTL8367_DI_FORCE_TXPAUSE : 0;
 val |= pa->rxpause ? RTL8367_DI_FORCE_RXPAUSE : 0;
 val |= pa->link ? RTL8367_DI_FORCE_LINK : 0;
 val |= pa->duplex ? RTL8367_DI_FORCE_DUPLEX : 0;

 REG_RMW(smi, RTL8367_DI_FORCE_REG(id), mask, val);

 return 0;
}
