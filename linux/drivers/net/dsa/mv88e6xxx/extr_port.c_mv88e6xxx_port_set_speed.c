
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dev; } ;


 int EOPNOTSUPP ;
 int MV88E6065_PORT_MAC_CTL_SPEED_200 ;
 int MV88E6390_PORT_MAC_CTL_ALTSPEED ;
 int MV88E6390_PORT_MAC_CTL_FORCE_SPEED ;
 int MV88E6390_PORT_MAC_CTL_SPEED_10000 ;
 int MV88E6XXX_PORT_MAC_CTL ;
 int MV88E6XXX_PORT_MAC_CTL_SPEED_10 ;
 int MV88E6XXX_PORT_MAC_CTL_SPEED_100 ;
 int MV88E6XXX_PORT_MAC_CTL_SPEED_1000 ;
 int MV88E6XXX_PORT_MAC_CTL_SPEED_MASK ;
 int MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED ;

 int dev_dbg (int ,char*,int,...) ;
 int mv88e6xxx_port_read (struct mv88e6xxx_chip*,int,int ,int*) ;
 int mv88e6xxx_port_write (struct mv88e6xxx_chip*,int,int ,int) ;

__attribute__((used)) static int mv88e6xxx_port_set_speed(struct mv88e6xxx_chip *chip, int port,
        int speed, bool alt_bit, bool force_bit)
{
 u16 reg, ctrl;
 int err;

 switch (speed) {
 case 10:
  ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_10;
  break;
 case 100:
  ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_100;
  break;
 case 200:
  if (alt_bit)
   ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_100 |
    MV88E6390_PORT_MAC_CTL_ALTSPEED;
  else
   ctrl = MV88E6065_PORT_MAC_CTL_SPEED_200;
  break;
 case 1000:
  ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_1000;
  break;
 case 2500:
  if (alt_bit)
   ctrl = MV88E6390_PORT_MAC_CTL_SPEED_10000 |
    MV88E6390_PORT_MAC_CTL_ALTSPEED;
  else
   ctrl = MV88E6390_PORT_MAC_CTL_SPEED_10000;
  break;
 case 10000:

 case 128:
  ctrl = MV88E6XXX_PORT_MAC_CTL_SPEED_UNFORCED;
  break;
 default:
  return -EOPNOTSUPP;
 }

 err = mv88e6xxx_port_read(chip, port, MV88E6XXX_PORT_MAC_CTL, &reg);
 if (err)
  return err;

 reg &= ~MV88E6XXX_PORT_MAC_CTL_SPEED_MASK;
 if (alt_bit)
  reg &= ~MV88E6390_PORT_MAC_CTL_ALTSPEED;
 if (force_bit) {
  reg &= ~MV88E6390_PORT_MAC_CTL_FORCE_SPEED;
  if (speed != 128)
   ctrl |= MV88E6390_PORT_MAC_CTL_FORCE_SPEED;
 }
 reg |= ctrl;

 err = mv88e6xxx_port_write(chip, port, MV88E6XXX_PORT_MAC_CTL, reg);
 if (err)
  return err;

 if (speed)
  dev_dbg(chip->dev, "p%d: Speed set to %d Mbps\n", port, speed);
 else
  dev_dbg(chip->dev, "p%d: Speed unforced\n", port);

 return 0;
}
