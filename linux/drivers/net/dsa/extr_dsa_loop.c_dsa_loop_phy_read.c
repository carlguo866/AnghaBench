
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mii_bus {int dummy; } ;
struct dsa_switch {struct dsa_loop_priv* priv; } ;
struct dsa_loop_priv {TYPE_1__* ports; scalar_t__ port_base; struct mii_bus* bus; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_3__ {TYPE_2__* mib; } ;


 size_t DSA_LOOP_PHY_READ_ERR ;
 size_t DSA_LOOP_PHY_READ_OK ;
 int mdiobus_read_nested (struct mii_bus*,scalar_t__,int) ;

__attribute__((used)) static int dsa_loop_phy_read(struct dsa_switch *ds, int port, int regnum)
{
 struct dsa_loop_priv *ps = ds->priv;
 struct mii_bus *bus = ps->bus;
 int ret;

 ret = mdiobus_read_nested(bus, ps->port_base + port, regnum);
 if (ret < 0)
  ps->ports[port].mib[DSA_LOOP_PHY_READ_ERR].val++;
 else
  ps->ports[port].mib[DSA_LOOP_PHY_READ_OK].val++;

 return ret;
}
