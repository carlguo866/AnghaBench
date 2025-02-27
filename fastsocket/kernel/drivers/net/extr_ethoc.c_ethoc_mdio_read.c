
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {struct ethoc* priv; } ;
struct ethoc {int dummy; } ;


 int EBUSY ;
 unsigned long ETHOC_MII_TIMEOUT ;
 int MIIADDRESS ;
 int MIIADDRESS_ADDR (int,int) ;
 int MIICOMMAND ;
 int MIICOMMAND_READ ;
 int MIIRX_DATA ;
 int MIISTATUS ;
 int MIISTATUS_BUSY ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_write (struct ethoc*,int ,int ) ;
 unsigned long jiffies ;
 int schedule () ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ethoc_mdio_read(struct mii_bus *bus, int phy, int reg)
{
 unsigned long timeout = jiffies + ETHOC_MII_TIMEOUT;
 struct ethoc *priv = bus->priv;

 ethoc_write(priv, MIIADDRESS, MIIADDRESS_ADDR(phy, reg));
 ethoc_write(priv, MIICOMMAND, MIICOMMAND_READ);

 while (time_before(jiffies, timeout)) {
  u32 status = ethoc_read(priv, MIISTATUS);
  if (!(status & MIISTATUS_BUSY)) {
   u32 data = ethoc_read(priv, MIIRX_DATA);

   ethoc_write(priv, MIICOMMAND, 0);
   return data;
  }

  schedule();
 }

 return -EBUSY;
}
