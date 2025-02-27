
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int EINVAL ;
 int IDE_DFLAG_KEEP_SETTINGS ;

__attribute__((used)) static int set_ksettings(ide_drive_t *drive, int arg)
{
 if (arg < 0 || arg > 1)
  return -EINVAL;

 if (arg)
  drive->dev_flags |= IDE_DFLAG_KEEP_SETTINGS;
 else
  drive->dev_flags &= ~IDE_DFLAG_KEEP_SETTINGS;

 return 0;
}
