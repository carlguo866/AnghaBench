
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ EAGLE_IV ;
 int ENODEV ;
 int GET_STATUS (int) ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 struct uea_softc* dev_to_uea (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*) ;
 int uea_mutex ;

__attribute__((used)) static ssize_t read_human_status(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int ret = -ENODEV;
 int modem_state;
 struct uea_softc *sc;

 mutex_lock(&uea_mutex);
 sc = dev_to_uea(dev);
 if (!sc)
  goto out;

 if (UEA_CHIP_VERSION(sc) == EAGLE_IV) {
  switch (sc->stats.phy.state) {
  case 0x0:
  case 0x1:
  case 0x3:
  case 0x4:
   modem_state = 0;
   break;
  case 0x5:
  case 0x6:
  case 0x9:
  case 0xa:
   modem_state = 1;
   break;
  case 0x7:
   modem_state = 2;
   break;
  case 0x2:
   modem_state = 3;
   break;
  default:
   modem_state = 4;
   break;
  }
 } else
  modem_state = GET_STATUS(sc->stats.phy.state);

 switch (modem_state) {
 case 0:
  ret = sprintf(buf, "Modem is booting\n");
  break;
 case 1:
  ret = sprintf(buf, "Modem is initializing\n");
  break;
 case 2:
  ret = sprintf(buf, "Modem is operational\n");
  break;
 case 3:
  ret = sprintf(buf, "Modem synchronization failed\n");
  break;
 default:
  ret = sprintf(buf, "Modem state is unknown\n");
  break;
 }
out:
 mutex_unlock(&uea_mutex);
 return ret;
}
