
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ obs_sceneitem_t ;


 int obs_sceneitem_destroy (TYPE_1__*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

void obs_sceneitem_release(obs_sceneitem_t *item)
{
 if (!item)
  return;

 if (os_atomic_dec_long(&item->ref) == 0)
  obs_sceneitem_destroy(item);
}
