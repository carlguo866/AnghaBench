
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef TYPE_1__ obs_data_t ;


 int os_atomic_inc_long (int *) ;

void obs_data_addref(obs_data_t *data)
{
 if (data)
  os_atomic_inc_long(&data->ref);
}
