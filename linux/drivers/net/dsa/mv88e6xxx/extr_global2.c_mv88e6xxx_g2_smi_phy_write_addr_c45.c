
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G2_SMI_PHY_CMD_OP_45_WRITE_ADDR ;
 int MV88E6XXX_G2_SMI_PHY_DATA ;
 int mv88e6xxx_g2_smi_phy_access_c45 (struct mv88e6xxx_chip*,int,int ,int,int) ;
 int mv88e6xxx_g2_smi_phy_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g2_write (struct mv88e6xxx_chip*,int ,int) ;

__attribute__((used)) static int mv88e6xxx_g2_smi_phy_write_addr_c45(struct mv88e6xxx_chip *chip,
            bool external, int port, int dev,
            int addr)
{
 u16 op = MV88E6XXX_G2_SMI_PHY_CMD_OP_45_WRITE_ADDR;
 int err;

 err = mv88e6xxx_g2_smi_phy_wait(chip);
 if (err)
  return err;

 err = mv88e6xxx_g2_write(chip, MV88E6XXX_G2_SMI_PHY_DATA, addr);
 if (err)
  return err;

 return mv88e6xxx_g2_smi_phy_access_c45(chip, external, op, port, dev);
}
