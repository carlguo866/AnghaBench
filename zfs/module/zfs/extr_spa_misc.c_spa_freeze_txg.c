
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int spa_freeze_txg; } ;
typedef TYPE_1__ spa_t ;



uint64_t
spa_freeze_txg(spa_t *spa)
{
 return (spa->spa_freeze_txg);
}
