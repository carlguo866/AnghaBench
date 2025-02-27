
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int MV88E6XXX_G1_ATU_CTL ;
 int MV88E6XXX_G1_ATU_OP ;
 int MV88E6XXX_G1_ATU_OP_BUSY ;
 int mv88e6xxx_g1_atu_fid_write (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_g1_atu_op_wait (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_g1_read (struct mv88e6xxx_chip*,int ,int*) ;
 int mv88e6xxx_g1_write (struct mv88e6xxx_chip*,int ,int) ;
 int mv88e6xxx_num_databases (struct mv88e6xxx_chip*) ;

__attribute__((used)) static int mv88e6xxx_g1_atu_op(struct mv88e6xxx_chip *chip, u16 fid, u16 op)
{
 u16 val;
 int err;


 if (mv88e6xxx_num_databases(chip) > 256) {
  err = mv88e6xxx_g1_atu_fid_write(chip, fid);
  if (err)
   return err;
 } else {
  if (mv88e6xxx_num_databases(chip) > 64) {

   err = mv88e6xxx_g1_read(chip, MV88E6XXX_G1_ATU_CTL,
      &val);
   if (err)
    return err;

   val = (val & 0x0fff) | ((fid << 8) & 0xf000);
   err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_CTL,
       val);
   if (err)
    return err;
  } else if (mv88e6xxx_num_databases(chip) > 16) {

   op |= (fid & 0x30) << 4;
  }


  op |= fid & 0xf;
 }

 err = mv88e6xxx_g1_write(chip, MV88E6XXX_G1_ATU_OP,
     MV88E6XXX_G1_ATU_OP_BUSY | op);
 if (err)
  return err;

 return mv88e6xxx_g1_atu_op_wait(chip);
}
