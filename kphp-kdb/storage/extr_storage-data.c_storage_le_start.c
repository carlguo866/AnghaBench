
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ log_split_min; scalar_t__ log_split_max; scalar_t__ log_split_mod; unsigned char volume_id; unsigned char md5_mode; } ;
typedef TYPE_1__ volume_t ;
struct lev_start {scalar_t__ schema_id; int extra_bytes; scalar_t__ split_min; scalar_t__ split_max; scalar_t__ split_mod; unsigned char* str; } ;


 scalar_t__ STORAGE_SCHEMA_V1 ;
 int assert (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int vkprintf (int,char*,unsigned char) ;

int storage_le_start (volume_t *V, struct lev_start *E) {
  if (E->schema_id != STORAGE_SCHEMA_V1) {
    return -1;
  }
  if (E->extra_bytes != 12) {
    return -2;
  }
  V->log_split_min = E->split_min;
  V->log_split_max = E->split_max;
  V->log_split_mod = E->split_mod;

  unsigned char tmp[12];
  memcpy (&tmp[0], &E->str[0], 12);
  memcpy (&V->volume_id, &tmp[0], 8);
  memcpy (&V->md5_mode, &tmp[8], 4);
  vkprintf (3, "V->md5_mode = %d\n", V->md5_mode);


  assert (V->log_split_mod > 0 && V->log_split_min >= 0 && V->log_split_min + 1 == V->log_split_max && V->log_split_max <= V->log_split_mod);

  return 0;
}
