
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {uintptr_t th_p; scalar_t__ data; int event; } ;
struct pthread {TYPE_1__ event_buf; } ;


 int TD_DEATH ;
 int THR_UMUTEX_LOCK (struct pthread*,int *) ;
 int THR_UMUTEX_UNLOCK (struct pthread*,int *) ;
 int _thr_event_lock ;
 int _thread_bp_death () ;
 struct pthread* _thread_last_event ;

void
_thr_report_death(struct pthread *curthread)
{
 curthread->event_buf.event = TD_DEATH;
 curthread->event_buf.th_p = (uintptr_t)curthread;
 curthread->event_buf.data = 0;
 THR_UMUTEX_LOCK(curthread, &_thr_event_lock);
 _thread_last_event = curthread;
 _thread_bp_death();
 _thread_last_event = ((void*)0);
 THR_UMUTEX_UNLOCK(curthread, &_thr_event_lock);
}
