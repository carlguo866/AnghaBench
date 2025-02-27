
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bcm2835_rng_softc {int* sc_buf; int sc_stall_count; int sc_rngto; int sc_dev; } ;


 int CTR2 (int ,char*,int ,int) ;
 int KTR_DEV ;
 int RANDOM_PURE_BROADCOM ;
 int RND_VAL_MASK ;
 int RND_VAL_SHIFT ;
 int RNG_CALLOUT_TICKS ;
 int RNG_DATA ;
 int RNG_STATUS ;
 int bcm2835_rng_read4 (struct bcm2835_rng_softc*,int ) ;
 int bcm2835_rng_read_multi4 (struct bcm2835_rng_softc*,int ,int*,int) ;
 int bcm2835_rng_start (struct bcm2835_rng_softc*) ;
 int bcm2835_rng_stat_inc_underrun (struct bcm2835_rng_softc*) ;
 int bcm2835_rng_stop (struct bcm2835_rng_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct bcm2835_rng_softc*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int random_harvest_queue (int*,int,int ) ;

__attribute__((used)) static void
bcm2835_rng_harvest(void *arg)
{
 uint32_t *dest;
 uint32_t status;
 u_int cnt, nread, num_avail, num_words;
 int seen_underrun, num_stalls;
 struct bcm2835_rng_softc *sc = arg;

 dest = sc->sc_buf;
 nread = num_words = 0;
 seen_underrun = num_stalls = 0;
 for (cnt = sizeof(sc->sc_buf) / sizeof(uint32_t); cnt > 0;
     cnt -= num_words) {

  status = bcm2835_rng_read4(sc, RNG_STATUS);
  num_avail = (status >> RND_VAL_SHIFT) & RND_VAL_MASK;


  if (num_avail == 0) {
   bcm2835_rng_stat_inc_underrun(sc);
   if (++seen_underrun >= sc->sc_stall_count) {
    if (num_stalls++ > 0) {
     device_printf(sc->sc_dev,
         "RNG stalled, disabling device\n");
     bcm2835_rng_stop(sc);
     break;
    } else {
     device_printf(sc->sc_dev,
         "Too many underruns, resetting\n");
     bcm2835_rng_stop(sc);
     bcm2835_rng_start(sc);
     seen_underrun = 0;
    }
   }

   continue;
  }

  CTR2(KTR_DEV, "%s: %d words available in RNG FIFO",
      device_get_nameunit(sc->sc_dev), num_avail);


  num_words = (num_avail > cnt) ? cnt : num_avail;
  bcm2835_rng_read_multi4(sc, RNG_DATA, dest,
      num_words);
  dest += num_words;
  nread += num_words;
 }

 cnt = nread * sizeof(uint32_t);
 if (cnt > 0)
  random_harvest_queue(sc->sc_buf, cnt, RANDOM_PURE_BROADCOM);

 callout_reset(&sc->sc_rngto, RNG_CALLOUT_TICKS, bcm2835_rng_harvest, sc);
}
