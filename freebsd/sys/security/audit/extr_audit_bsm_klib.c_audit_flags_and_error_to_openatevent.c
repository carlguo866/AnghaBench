
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int au_event_t ;
struct TYPE_3__ {int aoe_flags; int aoe_event; } ;


 int AUE_OPENAT ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 TYPE_1__* aue_openat ;
 int nitems (TYPE_1__*) ;

au_event_t
audit_flags_and_error_to_openatevent(int oflags, int error)
{
 int i;




 oflags = oflags & (O_RDONLY | O_CREAT | O_TRUNC | O_RDWR | O_WRONLY);
 for (i = 0; i < nitems(aue_openat); i++) {
  if (aue_openat[i].aoe_flags == oflags)
   return (aue_openat[i].aoe_event);
 }
 return (AUE_OPENAT);
}
