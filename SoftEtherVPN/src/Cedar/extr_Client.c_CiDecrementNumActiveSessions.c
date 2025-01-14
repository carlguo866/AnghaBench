
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lock (int ) ;
 int Unlock (int ) ;
 int ci_active_sessions_lock ;
 int ci_num_active_sessions ;

void CiDecrementNumActiveSessions()
{
 Lock(ci_active_sessions_lock);
 {
  if (ci_num_active_sessions >= 1)
  {
   ci_num_active_sessions--;
  }
 }
 Unlock(ci_active_sessions_lock);
}
