
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_wait_activity_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int spa_wait_common (char const*,int ,int ,int ,int *) ;

int
spa_wait(const char *pool, zpool_wait_activity_t activity, boolean_t *waited)
{

 return (spa_wait_common(pool, activity, B_FALSE, 0, waited));
}
