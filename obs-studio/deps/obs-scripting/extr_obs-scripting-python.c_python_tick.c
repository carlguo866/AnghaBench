
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct python_obs_timer {scalar_t__ last_ts; scalar_t__ interval; struct python_obs_timer* next; } ;
struct TYPE_2__ {scalar_t__ removed; } ;
struct python_obs_callback {TYPE_1__ base; } ;
struct obs_python_script {struct obs_python_script* next_tick; int tick; } ;
typedef int PyObject ;


 int * PyObject_CallObject (int ,int *) ;
 int * Py_BuildValue (char*,float) ;
 int Py_XDECREF (int *) ;
 int UNUSED_PARAMETER (void*) ;
 struct obs_python_script* cur_python_script ;
 struct obs_python_script* first_tick_script ;
 struct python_obs_timer* first_timer ;
 int lock_python () ;
 scalar_t__ obs_get_video_frame_time () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int py_error () ;
 struct python_obs_callback* python_obs_timer_cb (struct python_obs_timer*) ;
 int python_obs_timer_remove (struct python_obs_timer*) ;
 int tick_mutex ;
 int timer_call (TYPE_1__*) ;
 int timer_mutex ;
 int unlock_python () ;

__attribute__((used)) static void python_tick(void *param, float seconds)
{
 struct obs_python_script *data;
 bool valid;
 uint64_t ts = obs_get_video_frame_time();

 pthread_mutex_lock(&tick_mutex);
 valid = !!first_tick_script;
 pthread_mutex_unlock(&tick_mutex);




 if (valid) {
  lock_python();

  PyObject *args = Py_BuildValue("(f)", seconds);

  pthread_mutex_lock(&tick_mutex);
  data = first_tick_script;
  while (data) {
   cur_python_script = data;

   PyObject *py_ret =
    PyObject_CallObject(data->tick, args);
   Py_XDECREF(py_ret);
   py_error();

   data = data->next_tick;
  }

  cur_python_script = ((void*)0);

  pthread_mutex_unlock(&tick_mutex);

  Py_XDECREF(args);

  unlock_python();
 }




 pthread_mutex_lock(&timer_mutex);
 struct python_obs_timer *timer = first_timer;
 while (timer) {
  struct python_obs_timer *next = timer->next;
  struct python_obs_callback *cb = python_obs_timer_cb(timer);

  if (cb->base.removed) {
   python_obs_timer_remove(timer);
  } else {
   uint64_t elapsed = ts - timer->last_ts;

   if (elapsed >= timer->interval) {
    lock_python();
    timer_call(&cb->base);
    unlock_python();

    timer->last_ts += timer->interval;
   }
  }

  timer = next;
 }
 pthread_mutex_unlock(&timer_mutex);

 UNUSED_PARAMETER(param);
}
