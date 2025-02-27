
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_transport_qp {int qp_bitmap; int qp_bitmap_free; int qp_count; int mw_count; struct ntb_transport_qp* mw_vec; struct ntb_transport_qp* qp_vec; int vbase; int debugfs_dir; int link_work; int link_cleanup; } ;
struct ntb_transport_ctx {int qp_bitmap; int qp_bitmap_free; int qp_count; int mw_count; struct ntb_transport_ctx* mw_vec; struct ntb_transport_ctx* qp_vec; int vbase; int debugfs_dir; int link_work; int link_cleanup; } ;
struct ntb_dev {struct ntb_transport_qp* ctx; } ;
struct ntb_client {int dummy; } ;


 int BIT_ULL (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int debugfs_remove_recursive (int ) ;
 int iounmap (int ) ;
 int kfree (struct ntb_transport_qp*) ;
 int ntb_bus_remove (struct ntb_transport_qp*) ;
 int ntb_clear_ctx (struct ntb_dev*) ;
 int ntb_free_mw (struct ntb_transport_qp*,int) ;
 int ntb_link_disable (struct ntb_dev*) ;
 int ntb_transport_free_queue (struct ntb_transport_qp*) ;
 int ntb_transport_link_cleanup (struct ntb_transport_qp*) ;

__attribute__((used)) static void ntb_transport_free(struct ntb_client *self, struct ntb_dev *ndev)
{
 struct ntb_transport_ctx *nt = ndev->ctx;
 struct ntb_transport_qp *qp;
 u64 qp_bitmap_alloc;
 int i;

 ntb_transport_link_cleanup(nt);
 cancel_work_sync(&nt->link_cleanup);
 cancel_delayed_work_sync(&nt->link_work);

 qp_bitmap_alloc = nt->qp_bitmap & ~nt->qp_bitmap_free;


 for (i = 0; i < nt->qp_count; i++) {
  qp = &nt->qp_vec[i];
  if (qp_bitmap_alloc & BIT_ULL(i))
   ntb_transport_free_queue(qp);
  debugfs_remove_recursive(qp->debugfs_dir);
 }

 ntb_link_disable(ndev);
 ntb_clear_ctx(ndev);

 ntb_bus_remove(nt);

 for (i = nt->mw_count; i--; ) {
  ntb_free_mw(nt, i);
  iounmap(nt->mw_vec[i].vbase);
 }

 kfree(nt->qp_vec);
 kfree(nt->mw_vec);
 kfree(nt);
}
