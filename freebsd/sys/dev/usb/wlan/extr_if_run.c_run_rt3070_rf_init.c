
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct run_softc {int mac_ver; int mac_rev; int rf24_20mhz; int rf24_40mhz; int bbp25; int bbp26; int txmixgain_2ghz; int ext_2ghz_lna; int patch_dac; } ;
struct TYPE_4__ {int reg; int val; } ;


 int RT3070_GPIO_SWITCH ;
 int RT3070_LDO_CFG0 ;
 int RT3070_OPT_14 ;
 int RT3070_RF_BLOCK ;
 int RT3070_RX0_PD ;
 int RT3070_RX1_PD ;
 int RT3070_RX_LO1 ;
 int RT3070_RX_LO2 ;
 int RT3070_TX0_PD ;
 int RT3070_TX1_PD ;
 int RT3070_TX_LO1 ;
 int RT3070_TX_LO2 ;
 size_t nitems (TYPE_1__*) ;
 TYPE_1__* rt3070_def_rf ;
 TYPE_1__* rt3572_def_rf ;
 int run_bbp_read (struct run_softc*,int,int*) ;
 int run_bbp_write (struct run_softc*,int,int) ;
 int run_delay (struct run_softc*,int) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_rt3070_filter_calib (struct run_softc*,int,int,int*) ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static int
run_rt3070_rf_init(struct run_softc *sc)
{
 uint32_t tmp;
 uint8_t bbp4, mingain, rf, target;
 u_int i;

 run_rt3070_rf_read(sc, 30, &rf);

 run_rt3070_rf_write(sc, 30, rf | 0x80);
 run_delay(sc, 10);
 run_rt3070_rf_write(sc, 30, rf & ~0x80);


 if (sc->mac_ver == 0x3572) {
  for (i = 0; i < nitems(rt3572_def_rf); i++) {
   run_rt3070_rf_write(sc, rt3572_def_rf[i].reg,
       rt3572_def_rf[i].val);
  }
 } else {
  for (i = 0; i < nitems(rt3070_def_rf); i++) {
   run_rt3070_rf_write(sc, rt3070_def_rf[i].reg,
       rt3070_def_rf[i].val);
  }
 }

 if (sc->mac_ver == 0x3070 && sc->mac_rev < 0x0201) {





  run_read(sc, RT3070_LDO_CFG0, &tmp);
  tmp = (tmp & ~0x0f000000) | 0x0d000000;
  run_write(sc, RT3070_LDO_CFG0, tmp);

 } else if (sc->mac_ver == 0x3071) {
  run_rt3070_rf_read(sc, 6, &rf);
  run_rt3070_rf_write(sc, 6, rf | 0x40);
  run_rt3070_rf_write(sc, 31, 0x14);

  run_read(sc, RT3070_LDO_CFG0, &tmp);
  tmp &= ~0x1f000000;
  if (sc->mac_rev < 0x0211)
   tmp |= 0x0d000000;
  else
   tmp |= 0x01000000;
  run_write(sc, RT3070_LDO_CFG0, tmp);


  run_read(sc, RT3070_GPIO_SWITCH, &tmp);
  run_write(sc, RT3070_GPIO_SWITCH, tmp & ~0x20);

 } else if (sc->mac_ver == 0x3572) {
  run_rt3070_rf_read(sc, 6, &rf);
  run_rt3070_rf_write(sc, 6, rf | 0x40);


  run_read(sc, RT3070_LDO_CFG0, &tmp);
  tmp = (tmp & ~0x1f000000) | 0x0d000000;
  run_write(sc, RT3070_LDO_CFG0, tmp);

  if (sc->mac_rev < 0x0211 || !sc->patch_dac) {
   run_delay(sc, 1);

   tmp = (tmp & ~0x1f000000) | 0x01000000;
   run_write(sc, RT3070_LDO_CFG0, tmp);
  }
 }


 run_rt3070_rf_read(sc, 31, &rf);
 run_rt3070_rf_write(sc, 31, rf & ~0x20);


 sc->rf24_20mhz = 0x1f;
 target = (sc->mac_ver < 0x3071) ? 0x16 : 0x13;
 run_rt3070_filter_calib(sc, 0x07, target, &sc->rf24_20mhz);


 run_bbp_read(sc, 4, &bbp4);
 run_bbp_write(sc, 4, (bbp4 & ~0x18) | 0x10);
 run_rt3070_rf_read(sc, 31, &rf);
 run_rt3070_rf_write(sc, 31, rf | 0x20);


 sc->rf24_40mhz = 0x2f;
 target = (sc->mac_ver < 0x3071) ? 0x19 : 0x15;
 run_rt3070_filter_calib(sc, 0x27, target, &sc->rf24_40mhz);


 run_bbp_read(sc, 4, &bbp4);
 run_bbp_write(sc, 4, bbp4 & ~0x18);

 if (sc->mac_ver == 0x3572) {

  run_bbp_read(sc, 25, &sc->bbp25);
  run_bbp_read(sc, 26, &sc->bbp26);
 } else if (sc->mac_rev < 0x0201 || sc->mac_rev < 0x0211)
  run_rt3070_rf_write(sc, 27, 0x03);

 run_read(sc, RT3070_OPT_14, &tmp);
 run_write(sc, RT3070_OPT_14, tmp | 1);

 if (sc->mac_ver == 0x3070 || sc->mac_ver == 0x3071) {
  run_rt3070_rf_read(sc, 17, &rf);
  rf &= ~RT3070_TX_LO1;
  if ((sc->mac_ver == 0x3070 ||
       (sc->mac_ver == 0x3071 && sc->mac_rev >= 0x0211)) &&
      !sc->ext_2ghz_lna)
   rf |= 0x20;
  mingain = (sc->mac_ver == 0x3070) ? 1 : 2;
  if (sc->txmixgain_2ghz >= mingain)
   rf = (rf & ~0x7) | sc->txmixgain_2ghz;
  run_rt3070_rf_write(sc, 17, rf);
 }

 if (sc->mac_ver == 0x3071) {
  run_rt3070_rf_read(sc, 1, &rf);
  rf &= ~(RT3070_RX0_PD | RT3070_TX0_PD);
  rf |= RT3070_RF_BLOCK | RT3070_RX1_PD | RT3070_TX1_PD;
  run_rt3070_rf_write(sc, 1, rf);

  run_rt3070_rf_read(sc, 15, &rf);
  run_rt3070_rf_write(sc, 15, rf & ~RT3070_TX_LO2);

  run_rt3070_rf_read(sc, 20, &rf);
  run_rt3070_rf_write(sc, 20, rf & ~RT3070_RX_LO1);

  run_rt3070_rf_read(sc, 21, &rf);
  run_rt3070_rf_write(sc, 21, rf & ~RT3070_RX_LO2);
 }

 if (sc->mac_ver == 0x3070 || sc->mac_ver == 0x3071) {

  run_rt3070_rf_read(sc, 27, &rf);
  rf &= ~0x77;
  if (sc->mac_rev < 0x0211)
   rf |= 0x03;
  run_rt3070_rf_write(sc, 27, rf);
 }
 return (0);
}
