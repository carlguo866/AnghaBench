
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ OSSAudioData ;


 int close (int ) ;

int ff_oss_audio_close(OSSAudioData *s)
{
    close(s->fd);
    return 0;
}
