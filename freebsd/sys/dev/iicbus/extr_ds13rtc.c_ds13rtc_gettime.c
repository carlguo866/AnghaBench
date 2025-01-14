
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct time_regs {int hour; int sec; int min; int day; int month; int year; } ;
struct ds13rtc_softc {scalar_t__ use_ampm; int dev; scalar_t__ use_century; scalar_t__ is_binary_counter; int osfaddr; } ;
struct bcd_clocktime {int ispm; int sec; int min; int hour; int day; int mon; int year; scalar_t__ nsec; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int DS13xx_B_HOUR_PM ;
 int DS13xx_B_MONTH_CENTURY ;
 int DS13xx_B_STATUS_OSF ;
 int DS13xx_M_12HOUR ;
 int DS13xx_M_24HOUR ;
 int DS13xx_M_DAY ;
 int DS13xx_M_MINUTE ;
 int DS13xx_M_MONTH ;
 int DS13xx_M_SECOND ;
 int DS13xx_M_YEAR ;
 int EINVAL ;
 int clock_bcd_to_ts (struct bcd_clocktime*,struct timespec*,scalar_t__) ;
 int clock_dbgprint_bcd (int ,int ,struct bcd_clocktime*) ;
 struct ds13rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int read_reg (struct ds13rtc_softc*,int ,int*) ;
 int read_timeregs (struct ds13rtc_softc*,struct time_regs*) ;
 int read_timeword (struct ds13rtc_softc*,int *) ;

__attribute__((used)) static int
ds13rtc_gettime(device_t dev, struct timespec *ts)
{
 struct bcd_clocktime bct;
 struct time_regs tregs;
 struct ds13rtc_softc *sc;
 int err;
 uint8_t statreg, hourmask;

 sc = device_get_softc(dev);


 if ((err = read_reg(sc, sc->osfaddr, &statreg)) != 0) {
  return (err);
 }
 if (statreg & DS13xx_B_STATUS_OSF)
  return (EINVAL);


 if (sc->is_binary_counter) {
  ts->tv_nsec = 0;
  return (read_timeword(sc, &ts->tv_sec));
 }




 if ((err = read_timeregs(sc, &tregs)) != 0) {
  device_printf(dev, "cannot read RTC time\n");
  return (err);
 }

 if (sc->use_ampm)
  hourmask = DS13xx_M_12HOUR;
 else
  hourmask = DS13xx_M_24HOUR;

 bct.nsec = 0;
 bct.ispm = tregs.hour & DS13xx_B_HOUR_PM;
 bct.sec = tregs.sec & DS13xx_M_SECOND;
 bct.min = tregs.min & DS13xx_M_MINUTE;
 bct.hour = tregs.hour & hourmask;
 bct.day = tregs.day & DS13xx_M_DAY;
 bct.mon = tregs.month & DS13xx_M_MONTH;
 bct.year = tregs.year & DS13xx_M_YEAR;





 if (sc->use_century)
  bct.year += (tregs.month & DS13xx_B_MONTH_CENTURY) ? 0x100 : 0;

 clock_dbgprint_bcd(sc->dev, CLOCK_DBG_READ, &bct);
 err = clock_bcd_to_ts(&bct, ts, sc->use_ampm);

 return (err);
}
