
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct aic7770_identity {int (* setup ) (struct ahc_softc*) ;int name; } ;
struct TYPE_3__ {int busspd; int bustime; } ;
struct TYPE_4__ {TYPE_1__ aic7770_softc; } ;
struct ahc_softc {int flags; int chip; int features; int our_id; int our_id_b; int init_level; TYPE_2__ bus_softc; int * seep_config; int bus_chip_init; int description; } ;


 int AHC_EDGE_INTERRUPT ;

 int AHC_EXTENDED_TRANS_A ;
 int AHC_EXTENDED_TRANS_B ;
 int AHC_TERM_ENB_A ;
 int AHC_TERM_ENB_B ;
 int AHC_USEDEFAULTS ;

 int AHC_WIDE ;
 int AUTOFLUSHDIS ;
 int BCTL ;
 int BIOSDISABLED ;
 int BIOSMODE ;
 int BOFF ;
 int BUSSPD ;
 int BUSTIME ;
 int CHANNEL_B_PRIMARY ;
 int DFTHRSH ;
 int EDGE_TRIG ;
 int ENABLE ;
 int ENXIO ;
 int FALSE ;
 int HA_274_BIOSCTRL ;
 int HA_274_BIOSGLOBAL ;
 int HA_274_EXTENDED_TRANS ;
 int HOSTCONF ;
 int HSCSIID ;
 int HWSCSIID ;
 int INTDEF ;
 int M_DEVBUF ;
 int SBLKCTL ;
 int SCSICONF ;
 int TERM_ENB ;
 int VECTOR ;
 int aha2840_load_seeprom (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_init (struct ahc_softc*) ;
 int ahc_intr_enable (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_reset (struct ahc_softc*,int ) ;
 int ahc_softc_init (struct ahc_softc*) ;
 int aic7770_chip_init ;
 int aic7770_map_int (struct ahc_softc*,int) ;
 int aic7770_map_registers (struct ahc_softc*,int) ;
 int free (int *,int ) ;
 int printf (char*,int) ;
 int stub1 (struct ahc_softc*) ;

int
aic7770_config(struct ahc_softc *ahc, struct aic7770_identity *entry, u_int io)
{
 int error;
 int have_seeprom;
 u_int hostconf;
 u_int irq;
 u_int intdef;

 error = entry->setup(ahc);
 have_seeprom = 0;
 if (error != 0)
  return (error);

 error = aic7770_map_registers(ahc, io);
 if (error != 0)
  return (error);







 ahc_intr_enable(ahc, FALSE);

 ahc->description = entry->name;
 error = ahc_softc_init(ahc);
 if (error != 0)
  return (error);

 ahc->bus_chip_init = aic7770_chip_init;

 error = ahc_reset(ahc, FALSE);
 if (error != 0)
  return (error);


 intdef = ahc_inb(ahc, INTDEF);
 irq = intdef & VECTOR;
 switch (irq) {
 case 9:
 case 10:
 case 11:
 case 12:
 case 14:
 case 15:
  break;
 default:
  printf("aic7770_config: invalid irq setting %d\n", intdef);
  return (ENXIO);
 }

 if ((intdef & EDGE_TRIG) != 0)
  ahc->flags |= AHC_EDGE_INTERRUPT;

 switch (ahc->chip & (129|128)) {
 case 129:
 {
  u_int biosctrl;
  u_int scsiconf;
  u_int scsiconf1;

  biosctrl = ahc_inb(ahc, HA_274_BIOSCTRL);
  scsiconf = ahc_inb(ahc, SCSICONF);
  scsiconf1 = ahc_inb(ahc, SCSICONF + 1);


  if ((biosctrl & CHANNEL_B_PRIMARY) != 0)
   ahc->flags |= 1;

  if ((biosctrl & BIOSMODE) == BIOSDISABLED) {
   ahc->flags |= AHC_USEDEFAULTS;
  } else {
   if ((ahc->features & AHC_WIDE) != 0) {
    ahc->our_id = scsiconf1 & HWSCSIID;
    if (scsiconf & TERM_ENB)
     ahc->flags |= AHC_TERM_ENB_A;
   } else {
    ahc->our_id = scsiconf & HSCSIID;
    ahc->our_id_b = scsiconf1 & HSCSIID;
    if (scsiconf & TERM_ENB)
     ahc->flags |= AHC_TERM_ENB_A;
    if (scsiconf1 & TERM_ENB)
     ahc->flags |= AHC_TERM_ENB_B;
   }
  }
  if ((ahc_inb(ahc, HA_274_BIOSGLOBAL) & HA_274_EXTENDED_TRANS))
   ahc->flags |= AHC_EXTENDED_TRANS_A|AHC_EXTENDED_TRANS_B;
  break;
 }
 case 128:
 {
  have_seeprom = aha2840_load_seeprom(ahc);
  break;
 }
 default:
  break;
 }
 if (have_seeprom == 0) {
  free(ahc->seep_config, M_DEVBUF);
  ahc->seep_config = ((void*)0);
 }




 ahc_outb(ahc, SBLKCTL, ahc_inb(ahc, SBLKCTL) & ~AUTOFLUSHDIS);


 hostconf = ahc_inb(ahc, HOSTCONF);
 ahc_outb(ahc, BUSSPD, hostconf & DFTHRSH);
 ahc_outb(ahc, BUSTIME, (hostconf << 2) & BOFF);

 ahc->bus_softc.aic7770_softc.busspd = hostconf & DFTHRSH;
 ahc->bus_softc.aic7770_softc.bustime = (hostconf << 2) & BOFF;




 error = ahc_init(ahc);
 if (error != 0)
  return (error);

 error = aic7770_map_int(ahc, irq);
 if (error != 0)
  return (error);

 ahc->init_level++;




 ahc_outb(ahc, BCTL, ENABLE);
 return (0);
}
