
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* path; } ;
struct TYPE_2__ {int flags; } ;


 int DASD_PATH_TBV ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int dasd_path_need_verify(struct dasd_device *device, int chp)
{
 return test_bit(DASD_PATH_TBV, &device->path[chp].flags);
}
