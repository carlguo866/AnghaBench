
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bq27xxx_device_info {int opts; } ;


 int BQ27XXX_FLAG_OT ;
 int BQ27XXX_FLAG_OTC ;
 int BQ27XXX_FLAG_OTD ;
 int BQ27XXX_O_OTDC ;
 int BQ27XXX_O_UTOT ;

__attribute__((used)) static bool bq27xxx_battery_overtemp(struct bq27xxx_device_info *di, u16 flags)
{
 if (di->opts & BQ27XXX_O_OTDC)
  return flags & (BQ27XXX_FLAG_OTC | BQ27XXX_FLAG_OTD);
        if (di->opts & BQ27XXX_O_UTOT)
  return flags & BQ27XXX_FLAG_OT;

 return 0;
}
