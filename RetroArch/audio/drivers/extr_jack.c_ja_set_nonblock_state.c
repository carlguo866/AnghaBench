
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; } ;
typedef TYPE_1__ jack_t ;



__attribute__((used)) static void ja_set_nonblock_state(void *data, bool state)
{
   jack_t *jd = (jack_t*)data;
   if (jd)
      jd->nonblock = state;
}
