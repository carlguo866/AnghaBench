
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int state; } ;
struct mv88e6xxx_chip {struct mv88e6xxx_port_hwtstamp* port_hwtstamp; struct dsa_switch* ds; } ;
struct dsa_switch {int num_ports; } ;


 int MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS ;
 int dsa_is_user_port (struct dsa_switch*,int) ;
 int mv88e6xxx_rxtstamp_work (struct mv88e6xxx_chip*,struct mv88e6xxx_port_hwtstamp*) ;
 int mv88e6xxx_txtstamp_work (struct mv88e6xxx_chip*,struct mv88e6xxx_port_hwtstamp*) ;
 struct mv88e6xxx_chip* ptp_to_chip (struct ptp_clock_info*) ;
 scalar_t__ test_bit (int ,int *) ;

long mv88e6xxx_hwtstamp_work(struct ptp_clock_info *ptp)
{
 struct mv88e6xxx_chip *chip = ptp_to_chip(ptp);
 struct dsa_switch *ds = chip->ds;
 struct mv88e6xxx_port_hwtstamp *ps;
 int i, restart = 0;

 for (i = 0; i < ds->num_ports; i++) {
  if (!dsa_is_user_port(ds, i))
   continue;

  ps = &chip->port_hwtstamp[i];
  if (test_bit(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, &ps->state))
   restart |= mv88e6xxx_txtstamp_work(chip, ps);

  mv88e6xxx_rxtstamp_work(chip, ps);
 }

 return restart ? 1 : -1;
}
