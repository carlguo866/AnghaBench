
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type ;
struct smu_softc {struct smu_fan* sc_fans; } ;
struct TYPE_2__ {char min_rpm; char max_rpm; char zone; char default_rpm; char* name; } ;
struct smu_fan {scalar_t__ type; char reg; int rpm; int setpoint; TYPE_1__ fan; scalar_t__ old_style; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;
typedef int cell_t ;


 int OF_getprop (int ,char*,char*,int) ;
 scalar_t__ SMU_FAN_PWM ;
 scalar_t__ SMU_FAN_RPM ;
 struct smu_softc* device_get_softc (int ) ;
 int smu_fan_read_pwm (struct smu_fan*,int *,int *) ;
 int smu_fan_read_rpm (struct smu_fan*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
smu_fill_fan_prop(device_t dev, phandle_t child, int id)
{
 struct smu_fan *fan;
 struct smu_softc *sc;
 char type[32];

 sc = device_get_softc(dev);
 fan = &sc->sc_fans[id];

 OF_getprop(child, "device_type", type, sizeof(type));

 if (strcmp(type, "fan-rpm-control") == 0)
  fan->type = SMU_FAN_RPM;
 else
  fan->type = SMU_FAN_PWM;

 fan->dev = dev;
 fan->old_style = 0;
 OF_getprop(child, "reg", &fan->reg,
     sizeof(cell_t));
 OF_getprop(child, "min-value", &fan->fan.min_rpm,
     sizeof(int));
 OF_getprop(child, "max-value", &fan->fan.max_rpm,
     sizeof(int));
 OF_getprop(child, "zone", &fan->fan.zone,
     sizeof(int));

 if (OF_getprop(child, "unmanaged-value",
         &fan->fan.default_rpm,
         sizeof(int)) != sizeof(int))
  fan->fan.default_rpm = fan->fan.max_rpm;

 OF_getprop(child, "location", fan->fan.name,
     sizeof(fan->fan.name));

 if (fan->type == SMU_FAN_RPM)
  fan->setpoint = smu_fan_read_rpm(fan);
 else
  smu_fan_read_pwm(fan, &fan->setpoint, &fan->rpm);
}
