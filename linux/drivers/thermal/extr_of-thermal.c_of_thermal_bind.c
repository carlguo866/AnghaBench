
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct __thermal_zone* devdata; } ;
struct thermal_cooling_device {scalar_t__ np; } ;
struct __thermal_zone {int num_tbps; struct __thermal_bind_params* tbps; } ;
struct __thermal_cooling_bind_param {scalar_t__ cooling_device; int min; int max; } ;
struct __thermal_bind_params {int count; int usage; int trip_id; struct __thermal_cooling_bind_param* tcbp; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct __thermal_zone*) ;
 int thermal_zone_bind_cooling_device (struct thermal_zone_device*,int ,struct thermal_cooling_device*,int ,int ,int ) ;

__attribute__((used)) static int of_thermal_bind(struct thermal_zone_device *thermal,
      struct thermal_cooling_device *cdev)
{
 struct __thermal_zone *data = thermal->devdata;
 struct __thermal_bind_params *tbp;
 struct __thermal_cooling_bind_param *tcbp;
 int i, j;

 if (!data || IS_ERR(data))
  return -ENODEV;


 for (i = 0; i < data->num_tbps; i++) {
  tbp = data->tbps + i;

  for (j = 0; j < tbp->count; j++) {
   tcbp = tbp->tcbp + j;

   if (tcbp->cooling_device == cdev->np) {
    int ret;

    ret = thermal_zone_bind_cooling_device(thermal,
      tbp->trip_id, cdev,
      tcbp->max,
      tcbp->min,
      tbp->usage);
    if (ret)
     return ret;
   }
  }
 }

 return 0;
}
