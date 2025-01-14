
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int eft ;
struct TYPE_8__ {int hour; int minute; int second; int nanosecond; int year; int month; int day; int daylight; scalar_t__ timezone; int resolution; int accuracy; int sets_to_zero; } ;
typedef TYPE_1__ efi_time_t ;
typedef TYPE_1__ efi_time_cap_t ;
typedef int efi_bool_t ;
typedef int cap ;
typedef int alm ;
struct TYPE_9__ {int (* get_wakeup_time ) (int*,int*,TYPE_1__*) ;int (* get_time ) (TYPE_1__*,TYPE_1__*) ;} ;


 scalar_t__ EFI_UNSPECIFIED_TIMEZONE ;
 TYPE_7__ efi ;
 int efi_rtc_lock ;
 int memset (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,...) ;
 int stub1 (TYPE_1__*,TYPE_1__*) ;
 int stub2 (int*,int*,TYPE_1__*) ;

__attribute__((used)) static int
efi_rtc_get_status(char *buf)
{
 efi_time_t eft, alm;
 efi_time_cap_t cap;
 char *p = buf;
 efi_bool_t enabled, pending;
 unsigned long flags;

 memset(&eft, 0, sizeof(eft));
 memset(&alm, 0, sizeof(alm));
 memset(&cap, 0, sizeof(cap));

 spin_lock_irqsave(&efi_rtc_lock, flags);

 efi.get_time(&eft, &cap);
 efi.get_wakeup_time(&enabled, &pending, &alm);

 spin_unlock_irqrestore(&efi_rtc_lock,flags);

 p += sprintf(p,
       "Time           : %u:%u:%u.%09u\n"
       "Date           : %u-%u-%u\n"
       "Daylight       : %u\n",
       eft.hour, eft.minute, eft.second, eft.nanosecond,
       eft.year, eft.month, eft.day,
       eft.daylight);

 if (eft.timezone == EFI_UNSPECIFIED_TIMEZONE)
  p += sprintf(p, "Timezone       : unspecified\n");
 else

  p += sprintf(p, "Timezone       : %u\n", eft.timezone);


 p += sprintf(p,
       "Alarm Time     : %u:%u:%u.%09u\n"
       "Alarm Date     : %u-%u-%u\n"
       "Alarm Daylight : %u\n"
       "Enabled        : %s\n"
       "Pending        : %s\n",
       alm.hour, alm.minute, alm.second, alm.nanosecond,
       alm.year, alm.month, alm.day,
       alm.daylight,
       enabled == 1 ? "yes" : "no",
       pending == 1 ? "yes" : "no");

 if (eft.timezone == EFI_UNSPECIFIED_TIMEZONE)
  p += sprintf(p, "Timezone       : unspecified\n");
 else

  p += sprintf(p, "Timezone       : %u\n", alm.timezone);




 p += sprintf(p,
       "Resolution     : %u\n"
       "Accuracy       : %u\n"
       "SetstoZero     : %u\n",
        cap.resolution, cap.accuracy, cap.sets_to_zero);

 return p - buf;
}
