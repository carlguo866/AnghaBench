
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int PIDGET (int ) ;
 int require_notification_of_events (int ) ;

void
child_post_startup_inferior (ptid_t ptid)
{
  require_notification_of_events (PIDGET (ptid));
}
