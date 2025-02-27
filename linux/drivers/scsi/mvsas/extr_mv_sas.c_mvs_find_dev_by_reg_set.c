
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct mvs_info {struct mvs_device* devices; } ;
struct mvs_device {scalar_t__ taskfileset; } ;


 scalar_t__ MVS_ID_NOT_MAPPED ;
 size_t MVS_MAX_DEVICES ;

struct mvs_device *mvs_find_dev_by_reg_set(struct mvs_info *mvi,
      u8 reg_set)
{
 u32 dev_no;
 for (dev_no = 0; dev_no < MVS_MAX_DEVICES; dev_no++) {
  if (mvi->devices[dev_no].taskfileset == MVS_ID_NOT_MAPPED)
   continue;

  if (mvi->devices[dev_no].taskfileset == reg_set)
   return &mvi->devices[dev_no];
 }
 return ((void*)0);
}
