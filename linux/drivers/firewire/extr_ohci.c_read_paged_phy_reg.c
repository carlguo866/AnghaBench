
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int dummy; } ;


 int PHY_PAGE_SELECT ;
 int read_phy_reg (struct fw_ohci*,int) ;
 int update_phy_reg (struct fw_ohci*,int,int ,int) ;

__attribute__((used)) static int read_paged_phy_reg(struct fw_ohci *ohci, int page, int addr)
{
 int ret;

 ret = update_phy_reg(ohci, 7, PHY_PAGE_SELECT, page << 5);
 if (ret < 0)
  return ret;

 return read_phy_reg(ohci, addr);
}
