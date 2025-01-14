
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_probe_info {int dummy; } ;
struct niu_parent {int dummy; } ;
struct niu {int dummy; } ;


 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 int NIU_PCS_DEV_ADDR ;
 int NIU_PMA_PMD_DEV_ADDR ;
 int PHY_TYPE_MII ;
 int PHY_TYPE_PCS ;
 int PHY_TYPE_PMA_PMD ;
 int mdio_read (struct niu*,int,int ,int ) ;
 int memset (struct phy_probe_info*,int ,int) ;
 int mii_read (struct niu*,int,int ) ;
 int niu_lock_parent (struct niu*,unsigned long) ;
 int niu_unlock_parent (struct niu*,unsigned long) ;
 int phy_record (struct niu_parent*,struct phy_probe_info*,int,int,int,int ) ;

__attribute__((used)) static int fill_phy_probe_info(struct niu *np, struct niu_parent *parent,
          struct phy_probe_info *info)
{
 unsigned long flags;
 int port, err;

 memset(info, 0, sizeof(*info));


 niu_lock_parent(np, flags);
 err = 0;
 for (port = 8; port < 32; port++) {
  int dev_id_1, dev_id_2;

  dev_id_1 = mdio_read(np, port,
         NIU_PMA_PMD_DEV_ADDR, MII_PHYSID1);
  dev_id_2 = mdio_read(np, port,
         NIU_PMA_PMD_DEV_ADDR, MII_PHYSID2);
  err = phy_record(parent, info, dev_id_1, dev_id_2, port,
     PHY_TYPE_PMA_PMD);
  if (err)
   break;
  dev_id_1 = mdio_read(np, port,
         NIU_PCS_DEV_ADDR, MII_PHYSID1);
  dev_id_2 = mdio_read(np, port,
         NIU_PCS_DEV_ADDR, MII_PHYSID2);
  err = phy_record(parent, info, dev_id_1, dev_id_2, port,
     PHY_TYPE_PCS);
  if (err)
   break;
  dev_id_1 = mii_read(np, port, MII_PHYSID1);
  dev_id_2 = mii_read(np, port, MII_PHYSID2);
  err = phy_record(parent, info, dev_id_1, dev_id_2, port,
     PHY_TYPE_MII);
  if (err)
   break;
 }
 niu_unlock_parent(np, flags);

 return err;
}
