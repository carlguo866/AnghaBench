
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {unsigned int wdt_freq; scalar_t__ iobase; } ;


 scalar_t__ HW_WDTV ;
 unsigned int ioread32 (scalar_t__) ;
 struct asm9260_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int asm9260_wdt_gettimeleft(struct watchdog_device *wdd)
{
 struct asm9260_wdt_priv *priv = watchdog_get_drvdata(wdd);
 u32 counter;

 counter = ioread32(priv->iobase + HW_WDTV);

 return counter / priv->wdt_freq;
}
