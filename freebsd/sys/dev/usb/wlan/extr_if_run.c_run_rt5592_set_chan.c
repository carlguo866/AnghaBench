
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct run_softc {int* txpow1; int* txpow2; int ntxchains; int nrxchains; } ;
struct rt5592_freqs {int n; int k; int m; int r; } ;
typedef int int8_t ;
struct TYPE_7__ {scalar_t__ chan; } ;
struct TYPE_6__ {int reg; int val; scalar_t__ firstchan; scalar_t__ lastchan; } ;


 int RT3070_LDO_CFG0 ;
 int RT3070_PLL_PD ;
 int RT3070_RF_BLOCK ;
 int RT3070_RX0_PD ;
 int RT3070_RX1_PD ;
 int RT3070_TX0_PD ;
 int RT3070_TX1_PD ;
 int RT5390_VCOCAL ;
 int RT5592_DEBUG_INDEX ;
 int RT5592_SEL_XTAL ;
 int nitems (TYPE_1__*) ;
 TYPE_4__* rt2860_rf2850 ;
 TYPE_1__* rt5592_2ghz_def_rf ;
 TYPE_1__* rt5592_5ghz_def_rf ;
 TYPE_1__* rt5592_chan_5ghz ;
 struct rt5592_freqs* rt5592_freqs_20mhz ;
 struct rt5592_freqs* rt5592_freqs_40mhz ;
 int run_adjust_freq_offset (struct run_softc*) ;
 int run_read (struct run_softc*,int ,int*) ;
 int run_rt3070_rf_read (struct run_softc*,int,int*) ;
 int run_rt3070_rf_write (struct run_softc*,int,int) ;
 int run_write (struct run_softc*,int ,int) ;

__attribute__((used)) static void
run_rt5592_set_chan(struct run_softc *sc, u_int chan)
{
 const struct rt5592_freqs *freqs;
 uint32_t tmp;
 uint8_t reg, rf, txpow_bound;
 int8_t txpow1, txpow2;
 int i;

 run_read(sc, RT5592_DEBUG_INDEX, &tmp);
 freqs = (tmp & RT5592_SEL_XTAL) ?
     rt5592_freqs_40mhz : rt5592_freqs_20mhz;


 for (i = 0; rt2860_rf2850[i].chan != chan; i++, freqs++);


 txpow1 = sc->txpow1[i];
 txpow2 = sc->txpow2[i];

 run_read(sc, RT3070_LDO_CFG0, &tmp);
 tmp &= ~0x1c000000;
 if (chan > 14)
  tmp |= 0x14000000;
 run_write(sc, RT3070_LDO_CFG0, tmp);


 run_rt3070_rf_write(sc, 8, freqs->n & 0xff);
 run_rt3070_rf_read(sc, 9, &rf);
 rf &= ~(1 << 4);
 rf |= ((freqs->n & 0x0100) >> 8) << 4;
 run_rt3070_rf_write(sc, 9, rf);


 run_rt3070_rf_read(sc, 9, &rf);
 rf &= ~0x0f;
 rf |= (freqs->k & 0x0f);
 run_rt3070_rf_write(sc, 9, rf);


 run_rt3070_rf_read(sc, 11, &rf);
 rf &= ~0x0c;
 rf |= ((freqs->m - 0x8) & 0x3) << 2;
 run_rt3070_rf_write(sc, 11, rf);
 run_rt3070_rf_read(sc, 9, &rf);
 rf &= ~(1 << 7);
 rf |= (((freqs->m - 0x8) & 0x4) >> 2) << 7;
 run_rt3070_rf_write(sc, 9, rf);


 run_rt3070_rf_read(sc, 11, &rf);
 rf &= ~0x03;
 rf |= (freqs->r - 0x1);
 run_rt3070_rf_write(sc, 11, rf);

 if (chan <= 14) {

  for (i = 0; i < nitems(rt5592_2ghz_def_rf); i++) {
   run_rt3070_rf_write(sc, rt5592_2ghz_def_rf[i].reg,
       rt5592_2ghz_def_rf[i].val);
  }

  rf = (chan <= 10) ? 0x07 : 0x06;
  run_rt3070_rf_write(sc, 23, rf);
  run_rt3070_rf_write(sc, 59, rf);

  run_rt3070_rf_write(sc, 55, 0x43);





  reg = 2;
  txpow_bound = 0x27;
 } else {

  for (i = 0; i < nitems(rt5592_5ghz_def_rf); i++) {
   run_rt3070_rf_write(sc, rt5592_5ghz_def_rf[i].reg,
       rt5592_5ghz_def_rf[i].val);
  }
  for (i = 0; i < nitems(rt5592_chan_5ghz); i++) {
   if (chan >= rt5592_chan_5ghz[i].firstchan &&
       chan <= rt5592_chan_5ghz[i].lastchan) {
    run_rt3070_rf_write(sc, rt5592_chan_5ghz[i].reg,
        rt5592_chan_5ghz[i].val);
   }
  }





  reg = 3;
  txpow_bound = 0x2b;
 }


 run_rt3070_rf_read(sc, 49, &rf);
 rf &= ~0xc0;
 rf |= (reg << 6);
 rf = (rf & ~0x3f) | (txpow1 & 0x3f);
 if ((rf & 0x3f) > txpow_bound)
  rf = (rf & ~0x3f) | txpow_bound;
 run_rt3070_rf_write(sc, 49, rf);


 run_rt3070_rf_read(sc, 50, &rf);
 rf &= ~(1 << 7 | 1 << 6);
 rf |= (reg << 6);
 rf = (rf & ~0x3f) | (txpow2 & 0x3f);
 if ((rf & 0x3f) > txpow_bound)
  rf = (rf & ~0x3f) | txpow_bound;
 run_rt3070_rf_write(sc, 50, rf);


 run_rt3070_rf_read(sc, 1, &rf);
 rf |= (RT3070_RF_BLOCK | RT3070_PLL_PD | RT3070_RX0_PD | RT3070_TX0_PD);
 if (sc->ntxchains > 1)
  rf |= RT3070_TX1_PD;
 if (sc->nrxchains > 1)
  rf |= RT3070_RX1_PD;
 run_rt3070_rf_write(sc, 1, rf);

 run_rt3070_rf_write(sc, 6, 0xe4);

 run_rt3070_rf_write(sc, 30, 0x10);
 run_rt3070_rf_write(sc, 31, 0x80);
 run_rt3070_rf_write(sc, 32, 0x80);

 run_adjust_freq_offset(sc);


 run_rt3070_rf_read(sc, 3, &rf);
 rf |= RT5390_VCOCAL;
 run_rt3070_rf_write(sc, 3, rf);
}
