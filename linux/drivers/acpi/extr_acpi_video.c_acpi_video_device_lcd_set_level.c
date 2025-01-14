
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_video_device {TYPE_3__* backlight; TYPE_1__* brightness; TYPE_4__* dev; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_6__ {int brightness; } ;
struct TYPE_7__ {TYPE_2__ props; } ;
struct TYPE_5__ {int curr; int count; int* levels; } ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_VIDEO_FIRST_LEVEL ;
 int AE_INFO ;
 int EINVAL ;
 int EIO ;
 int acpi_execute_simple_method (int ,char*,int) ;

__attribute__((used)) static int
acpi_video_device_lcd_set_level(struct acpi_video_device *device, int level)
{
 int status;
 int state;

 status = acpi_execute_simple_method(device->dev->handle,
         "_BCM", level);
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Evaluating _BCM failed"));
  return -EIO;
 }

 device->brightness->curr = level;
 for (state = ACPI_VIDEO_FIRST_LEVEL; state < device->brightness->count;
      state++)
  if (level == device->brightness->levels[state]) {
   if (device->backlight)
    device->backlight->props.brightness =
     state - ACPI_VIDEO_FIRST_LEVEL;
   return 0;
  }

 ACPI_ERROR((AE_INFO, "Current brightness invalid"));
 return -EINVAL;
}
