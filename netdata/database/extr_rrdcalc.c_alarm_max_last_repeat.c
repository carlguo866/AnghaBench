
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int avl ;
struct TYPE_6__ {char* name; int hash; } ;
struct TYPE_5__ {int alarms_idx_name; } ;
typedef TYPE_1__ RRDHOST ;
typedef TYPE_2__ RRDCALC ;


 scalar_t__ avl_search_lock (int *,int *) ;

RRDCALC *alarm_max_last_repeat(RRDHOST *host, char *alarm_name,uint32_t hash) {
    RRDCALC findme;
    findme.name = alarm_name;
    findme.hash = hash;
    RRDCALC *rc = (RRDCALC *)avl_search_lock(&host->alarms_idx_name, (avl *)&findme);

    return rc;
}
