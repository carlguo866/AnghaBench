
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct phy_probe_info {size_t* cur; int** phy_id; size_t** phy_port; } ;
struct niu_parent {int index; } ;


 int EINVAL ;
 size_t NIU_MAX_PORTS ;
 int NIU_PHY_ID_BCM5464R ;
 int NIU_PHY_ID_BCM8704 ;
 int NIU_PHY_ID_MASK ;
 int NIU_PHY_ID_MRVL88X2011 ;
 int PHY_TYPE_PCS ;
 int PHY_TYPE_PMA_PMD ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int,char*,size_t) ;

__attribute__((used)) static int phy_record(struct niu_parent *parent, struct phy_probe_info *p,
        int dev_id_1, int dev_id_2, u8 phy_port, int type)
{
 u32 id = (dev_id_1 << 16) | dev_id_2;
 u8 idx;

 if (dev_id_1 < 0 || dev_id_2 < 0)
  return 0;
 if (type == PHY_TYPE_PMA_PMD || type == PHY_TYPE_PCS) {



  if (((id & NIU_PHY_ID_MASK) != NIU_PHY_ID_BCM8704) &&
      ((id & NIU_PHY_ID_MASK) != NIU_PHY_ID_MRVL88X2011))
   return 0;
 } else {
  if ((id & NIU_PHY_ID_MASK) != NIU_PHY_ID_BCM5464R)
   return 0;
 }

 pr_info("niu%d: Found PHY %08x type %s at phy_port %u\n",
  parent->index, id,
  type == PHY_TYPE_PMA_PMD ? "PMA/PMD" :
  type == PHY_TYPE_PCS ? "PCS" : "MII",
  phy_port);

 if (p->cur[type] >= NIU_MAX_PORTS) {
  pr_err("Too many PHY ports\n");
  return -EINVAL;
 }
 idx = p->cur[type];
 p->phy_id[type][idx] = id;
 p->phy_port[type][idx] = phy_port;
 p->cur[type] = idx + 1;
 return 0;
}
