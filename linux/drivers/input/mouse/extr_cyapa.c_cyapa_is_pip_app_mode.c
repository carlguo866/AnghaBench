
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyapa {scalar_t__ gen; scalar_t__ state; } ;


 scalar_t__ CYAPA_GEN5 ;
 scalar_t__ CYAPA_GEN6 ;
 scalar_t__ CYAPA_STATE_GEN5_APP ;
 scalar_t__ CYAPA_STATE_GEN6_APP ;

bool cyapa_is_pip_app_mode(struct cyapa *cyapa)
{
 if (cyapa->gen == CYAPA_GEN6 && cyapa->state == CYAPA_STATE_GEN6_APP)
  return 1;

 if (cyapa->gen == CYAPA_GEN5 && cyapa->state == CYAPA_STATE_GEN5_APP)
  return 1;

 return 0;
}
