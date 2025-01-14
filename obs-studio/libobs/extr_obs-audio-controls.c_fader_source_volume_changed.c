
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_fader {int ignore_next_signal; float cur_db; int mutex; } ;
typedef int calldata_t ;


 scalar_t__ calldata_float (int *,char*) ;
 float mul_to_db (float const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int signal_volume_changed (struct obs_fader*,float const) ;

__attribute__((used)) static void fader_source_volume_changed(void *vptr, calldata_t *calldata)
{
 struct obs_fader *fader = (struct obs_fader *)vptr;

 pthread_mutex_lock(&fader->mutex);

 if (fader->ignore_next_signal) {
  fader->ignore_next_signal = 0;
  pthread_mutex_unlock(&fader->mutex);
  return;
 }

 const float mul = (float)calldata_float(calldata, "volume");
 const float db = mul_to_db(mul);
 fader->cur_db = db;

 pthread_mutex_unlock(&fader->mutex);

 signal_volume_changed(fader, db);
}
