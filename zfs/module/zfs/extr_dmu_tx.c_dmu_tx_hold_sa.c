
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_17__ {scalar_t__ sa_master_obj; scalar_t__ sa_reg_attr_obj; scalar_t__ sa_layout_attr_obj; scalar_t__ sa_force_spill; } ;
typedef TYPE_2__ sa_os_t ;
struct TYPE_18__ {scalar_t__ sa_spill; scalar_t__ sa_bonus; } ;
typedef TYPE_3__ sa_handle_t ;
struct TYPE_19__ {scalar_t__ dn_have_spill; } ;
typedef TYPE_4__ dnode_t ;
struct TYPE_20__ {scalar_t__ tx_txg; TYPE_1__* tx_objset; } ;
typedef TYPE_5__ dmu_tx_t ;
typedef int dmu_buf_impl_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_16__ {TYPE_2__* os_sa; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 TYPE_4__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 scalar_t__ DMU_NEW_OBJECT ;
 int * SA_LAYOUTS ;
 int * SA_REGISTRY ;
 int dmu_tx_hold_bonus_by_dnode (TYPE_5__*,TYPE_4__*) ;
 int dmu_tx_hold_spill (TYPE_5__*,int ) ;
 int dmu_tx_hold_zap (TYPE_5__*,scalar_t__,int ,int *) ;
 int dmu_tx_sa_registration_hold (TYPE_2__*,TYPE_5__*) ;
 int sa_handle_object (TYPE_3__*) ;

void
dmu_tx_hold_sa(dmu_tx_t *tx, sa_handle_t *hdl, boolean_t may_grow)
{
 uint64_t object;
 sa_os_t *sa = tx->tx_objset->os_sa;

 ASSERT(hdl != ((void*)0));

 object = sa_handle_object(hdl);

 dmu_buf_impl_t *db = (dmu_buf_impl_t *)hdl->sa_bonus;
 DB_DNODE_ENTER(db);
 dmu_tx_hold_bonus_by_dnode(tx, DB_DNODE(db));
 DB_DNODE_EXIT(db);

 if (tx->tx_objset->os_sa->sa_master_obj == 0)
  return;

 if (tx->tx_objset->os_sa->sa_reg_attr_obj == 0 ||
     tx->tx_objset->os_sa->sa_layout_attr_obj == 0) {
  dmu_tx_hold_zap(tx, sa->sa_master_obj, B_TRUE, SA_LAYOUTS);
  dmu_tx_hold_zap(tx, sa->sa_master_obj, B_TRUE, SA_REGISTRY);
  dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, B_TRUE, ((void*)0));
  dmu_tx_hold_zap(tx, DMU_NEW_OBJECT, B_TRUE, ((void*)0));
 }

 dmu_tx_sa_registration_hold(sa, tx);

 if (may_grow && tx->tx_objset->os_sa->sa_layout_attr_obj)
  dmu_tx_hold_zap(tx, sa->sa_layout_attr_obj, B_TRUE, ((void*)0));

 if (sa->sa_force_spill || may_grow || hdl->sa_spill) {
  ASSERT(tx->tx_txg == 0);
  dmu_tx_hold_spill(tx, object);
 } else {
  dnode_t *dn;

  DB_DNODE_ENTER(db);
  dn = DB_DNODE(db);
  if (dn->dn_have_spill) {
   ASSERT(tx->tx_txg == 0);
   dmu_tx_hold_spill(tx, object);
  }
  DB_DNODE_EXIT(db);
 }
}
