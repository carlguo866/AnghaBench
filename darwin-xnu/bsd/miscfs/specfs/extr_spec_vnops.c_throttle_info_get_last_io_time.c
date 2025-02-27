
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct _throttle_io_info_t {struct timeval throttle_last_write_timestamp; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {size_t mnt_devbsdunit; struct _throttle_io_info_t* mnt_throttle_info; } ;


 int LOWPRI_MAX_NUM_DEV ;
 struct _throttle_io_info_t* _throttle_io_info ;

void
throttle_info_get_last_io_time(mount_t mp, struct timeval *tv)
{
     struct _throttle_io_info_t *info;

 if (mp == ((void*)0))
  info = &_throttle_io_info[LOWPRI_MAX_NUM_DEV - 1];
 else if (mp->mnt_throttle_info == ((void*)0))
  info = &_throttle_io_info[mp->mnt_devbsdunit];
 else
  info = mp->mnt_throttle_info;

 *tv = info->throttle_last_write_timestamp;
}
