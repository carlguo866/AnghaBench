
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ IjkMediaPlayer ;


 int MPTRACE (char*,...) ;
 int assert (TYPE_1__*) ;
 int ijkmp_start_l (TYPE_1__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int ijkmp_start(IjkMediaPlayer *mp)
{
    assert(mp);
    MPTRACE("ijkmp_start()\n");
    pthread_mutex_lock(&mp->mutex);
    int retval = ijkmp_start_l(mp);
    pthread_mutex_unlock(&mp->mutex);
    MPTRACE("ijkmp_start()=%d\n", retval);
    return retval;
}
