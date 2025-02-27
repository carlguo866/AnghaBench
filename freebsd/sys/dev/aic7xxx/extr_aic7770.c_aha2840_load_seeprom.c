
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct seeprom_descriptor {int sd_DI; int sd_DO; int sd_CK; int sd_CS; int sd_RDY; scalar_t__ sd_MS; int sd_chip; void* sd_dataout_offset; void* sd_status_offset; int sd_control_offset; struct ahc_softc* sd_ahc; } ;
struct seeprom_config {int* device_flags; int brtime_id; int adapter_control; int bios_control; } ;
struct ahc_softc {int features; int our_id; int flags; struct seeprom_config* seep_config; } ;


 int AHC_EXTENDED_TRANS_A ;
 int AHC_TERM_ENB_A ;
 int AHC_USEDEFAULTS ;
 int AHC_WIDE ;
 int C46 ;
 int CF284XEXTEND ;
 int CF284XSTERM ;
 int CFDISC ;
 int CFRESETB ;
 int CFSCSIID ;
 int CFSPARITY ;
 int CFSYNCH ;
 int CFWIDEB ;
 int CFXFER ;
 int CK_2840 ;
 int CS_2840 ;
 scalar_t__ DISC_DSB ;
 int DI_2840 ;
 int DO_2840 ;
 int EEPROM_TF ;
 int ENSPCHK ;
 int RESET_SCSI ;
 scalar_t__ SCSICONF ;
 int SEECTL_2840 ;
 int SOFS ;
 void* STATUS_2840 ;
 scalar_t__ TARG_SCSIRATE ;
 int WIDEXFER ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,scalar_t__,int) ;
 int ahc_read_seeprom (struct seeprom_descriptor*,int*,int ,int) ;
 scalar_t__ ahc_verify_cksum (struct seeprom_config*) ;
 scalar_t__ bootverbose ;
 int printf (char*,...) ;

__attribute__((used)) static int
aha2840_load_seeprom(struct ahc_softc *ahc)
{
 struct seeprom_descriptor sd;
 struct seeprom_config *sc;
 int have_seeprom;
 uint8_t scsi_conf;

 sd.sd_ahc = ahc;
 sd.sd_control_offset = SEECTL_2840;
 sd.sd_status_offset = STATUS_2840;
 sd.sd_dataout_offset = STATUS_2840;
 sd.sd_chip = C46;
 sd.sd_MS = 0;
 sd.sd_RDY = EEPROM_TF;
 sd.sd_CS = CS_2840;
 sd.sd_CK = CK_2840;
 sd.sd_DO = DO_2840;
 sd.sd_DI = DI_2840;
 sc = ahc->seep_config;

 if (bootverbose)
  printf("%s: Reading SEEPROM...", ahc_name(ahc));
 have_seeprom = ahc_read_seeprom(&sd, (uint16_t *)sc,
                   0, sizeof(*sc)/2);

 if (have_seeprom) {

  if (ahc_verify_cksum(sc) == 0) {
   if(bootverbose)
    printf ("checksum error\n");
   have_seeprom = 0;
  } else if (bootverbose) {
   printf("done.\n");
  }
 }

 if (!have_seeprom) {
  if (bootverbose)
   printf("%s: No SEEPROM available\n", ahc_name(ahc));
  ahc->flags |= AHC_USEDEFAULTS;
 } else {




  int i;
  int max_targ;
  uint16_t discenable;

  max_targ = (ahc->features & AHC_WIDE) != 0 ? 16 : 8;
  discenable = 0;
  for (i = 0; i < max_targ; i++){
   uint8_t target_settings;

   target_settings = (sc->device_flags[i] & CFXFER) << 4;
   if (sc->device_flags[i] & CFSYNCH)
    target_settings |= SOFS;
   if (sc->device_flags[i] & CFWIDEB)
    target_settings |= WIDEXFER;
   if (sc->device_flags[i] & CFDISC)
    discenable |= (0x01 << i);
   ahc_outb(ahc, TARG_SCSIRATE + i, target_settings);
  }
  ahc_outb(ahc, DISC_DSB, ~(discenable & 0xff));
  ahc_outb(ahc, DISC_DSB + 1, ~((discenable >> 8) & 0xff));

  ahc->our_id = sc->brtime_id & CFSCSIID;

  scsi_conf = (ahc->our_id & 0x7);
  if (sc->adapter_control & CFSPARITY)
   scsi_conf |= ENSPCHK;
  if (sc->adapter_control & CFRESETB)
   scsi_conf |= RESET_SCSI;

  if (sc->bios_control & CF284XEXTEND)
   ahc->flags |= AHC_EXTENDED_TRANS_A;

  ahc_outb(ahc, SCSICONF, scsi_conf);

  if (sc->adapter_control & CF284XSTERM)
   ahc->flags |= AHC_TERM_ENB_A;
 }
 return (have_seeprom);
}
