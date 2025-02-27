
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef int u_longlong_t ;
struct TYPE_6__ {scalar_t__ spa_config_object; int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_7__ {scalar_t__ db_data; } ;
typedef TYPE_2__ dmu_buf_t ;


 int FTAG ;
 int dmu_bonus_hold (int ,scalar_t__,int ,TYPE_2__**) ;
 int dmu_buf_rele (TYPE_2__*,int ) ;
 int dump_packed_nvlist (int ,scalar_t__,void*,int) ;
 int fprintf (int ,char*,int ,int) ;
 int printf (char*) ;
 int stderr ;

__attribute__((used)) static void
dump_config(spa_t *spa)
{
 dmu_buf_t *db;
 size_t nvsize = 0;
 int error = 0;


 error = dmu_bonus_hold(spa->spa_meta_objset,
     spa->spa_config_object, FTAG, &db);

 if (error == 0) {
  nvsize = *(uint64_t *)db->db_data;
  dmu_buf_rele(db, FTAG);

  (void) printf("\nMOS Configuration:\n");
  dump_packed_nvlist(spa->spa_meta_objset,
      spa->spa_config_object, (void *)&nvsize, 1);
 } else {
  (void) fprintf(stderr, "dmu_bonus_hold(%llu) failed, errno %d",
      (u_longlong_t)spa->spa_config_object, error);
 }
}
