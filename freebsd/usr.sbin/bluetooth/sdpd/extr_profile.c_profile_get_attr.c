
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef TYPE_1__* profile_p ;
typedef int * profile_attr_create_p ;
typedef TYPE_2__* attr_p ;
struct TYPE_5__ {scalar_t__ attr; int * create; } ;
struct TYPE_4__ {int attrs; } ;



profile_attr_create_p
profile_get_attr(const profile_p profile, uint16_t attr)
{
 attr_p ad = (attr_p) profile->attrs;

 for (; ad->create != ((void*)0); ad ++)
  if (ad->attr == attr)
   return (ad->create);

 return (((void*)0));
}
