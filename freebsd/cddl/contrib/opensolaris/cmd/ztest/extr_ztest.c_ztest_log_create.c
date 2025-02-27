
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zd_zilog; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int lr_t ;
struct TYPE_9__ {int lr_common; } ;
typedef TYPE_2__ lr_create_t ;
struct TYPE_10__ {int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int TX_CREATE ;
 int bcopy (int *,int *,int) ;
 int strlen (char*) ;
 int zil_itx_assign (int ,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int ,int) ;
 scalar_t__ zil_replaying (int ,int *) ;

__attribute__((used)) static void
ztest_log_create(ztest_ds_t *zd, dmu_tx_t *tx, lr_create_t *lr)
{
 char *name = (void *)(lr + 1);
 size_t namesize = strlen(name) + 1;
 itx_t *itx;

 if (zil_replaying(zd->zd_zilog, tx))
  return;

 itx = zil_itx_create(TX_CREATE, sizeof (*lr) + namesize);
 bcopy(&lr->lr_common + 1, &itx->itx_lr + 1,
     sizeof (*lr) + namesize - sizeof (lr_t));

 zil_itx_assign(zd->zd_zilog, itx, tx);
}
