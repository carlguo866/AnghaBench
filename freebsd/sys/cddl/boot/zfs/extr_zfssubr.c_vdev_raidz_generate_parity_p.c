
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int src ;
struct TYPE_5__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
struct TYPE_4__ {int rc_size; int* rc_data; } ;


 int ASSERT (int) ;
 size_t VDEV_RAIDZ_P ;

__attribute__((used)) static void
vdev_raidz_generate_parity_p(raidz_map_t *rm)
{
 uint64_t *p, *src, pcount, ccount, i;
 int c;

 pcount = rm->rm_col[VDEV_RAIDZ_P].rc_size / sizeof (src[0]);

 for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
  src = rm->rm_col[c].rc_data;
  p = rm->rm_col[VDEV_RAIDZ_P].rc_data;
  ccount = rm->rm_col[c].rc_size / sizeof (src[0]);

  if (c == rm->rm_firstdatacol) {
   ASSERT(ccount == pcount);
   for (i = 0; i < ccount; i++, src++, p++) {
    *p = *src;
   }
  } else {
   ASSERT(ccount <= pcount);
   for (i = 0; i < ccount; i++, src++, p++) {
    *p ^= *src;
   }
  }
 }
}
