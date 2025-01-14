
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mii_bus {int dummy; } ;
struct TYPE_7__ {int dat; scalar_t__ val; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_smix_rd_dat_t ;
struct TYPE_6__ {int phy_adr; int reg_adr; int phy_op; } ;
struct TYPE_9__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_smix_cmd_t ;


 int BUG_ON (int) ;
 int CVMX_SMIX_CMD (int) ;
 int MDIO_CLAUSE_22_READ ;
 int OCTEON_FEATURE_MDIO_CLAUSE_45 ;
 TYPE_3__ __cvmx_mdio_read_rd_dat (int) ;
 int __cvmx_mdio_set_clause22_mode (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int mdiobus_read (struct mii_bus*,int,int) ;
 scalar_t__ octeon_has_feature (int ) ;
 struct mii_bus** octeon_mdiobuses ;

__attribute__((used)) static inline int cvmx_mdio_read(int bus_id, int phy_id, int location)
{
    cvmx_smix_cmd_t smi_cmd;
    cvmx_smix_rd_dat_t smi_rd;

    if (octeon_has_feature(OCTEON_FEATURE_MDIO_CLAUSE_45))
        __cvmx_mdio_set_clause22_mode(bus_id);

    smi_cmd.u64 = 0;
    smi_cmd.s.phy_op = MDIO_CLAUSE_22_READ;
    smi_cmd.s.phy_adr = phy_id;
    smi_cmd.s.reg_adr = location;
    cvmx_write_csr(CVMX_SMIX_CMD(bus_id), smi_cmd.u64);

    smi_rd = __cvmx_mdio_read_rd_dat(bus_id);
    if (smi_rd.s.val)
        return smi_rd.s.dat;
    else
        return -1;

}
