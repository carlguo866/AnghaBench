
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct qlnx_fastpath {int dummy; } ;
struct TYPE_19__ {scalar_t__ lock_init; scalar_t__ hw_init; scalar_t__ slowpath_start; scalar_t__ callout_init; } ;
struct TYPE_17__ {int num_hwfns; } ;
struct TYPE_20__ {int num_rss; scalar_t__ msix_bar; int msix_rid; scalar_t__ pci_dbells; int dbells_rid; scalar_t__ dbells_size; scalar_t__ pci_reg; int reg_rid; int hw_lock; TYPE_2__ flags; scalar_t__ msix_count; scalar_t__* sp_irq; int * sp_irq_rid; scalar_t__* sp_handle; TYPE_15__ cdev; TYPE_1__* irq_vec; struct qlnx_fastpath* fp_array; int * ifp; int qlnx_callout; int ** grcdump; int ** idle_chk; int pci_dev; } ;
typedef TYPE_3__ qlnx_host_t ;
typedef int device_t ;
struct TYPE_18__ {scalar_t__ irq; int irq_rid; scalar_t__ handle; } ;


 int M_QLNXBUF ;
 int QLNX_MAX_HW_FUNCS ;
 int QL_DPRINT2 (TYPE_3__*,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int ecore_hw_remove (TYPE_15__*) ;
 int ether_ifdetach (int *) ;
 int free (int *,int ) ;
 int mtx_destroy (int *) ;
 int pci_release_msi (int ) ;
 int qlnx_del_cdev (TYPE_3__*) ;
 int qlnx_destroy_error_recovery_taskqueue (TYPE_3__*) ;
 int qlnx_destroy_fp_taskqueues (TYPE_3__*) ;
 int qlnx_destroy_sp_taskqueues (TYPE_3__*) ;
 int qlnx_free_parent_dma_tag (TYPE_3__*) ;
 int qlnx_free_rx_dma_tag (TYPE_3__*) ;
 int qlnx_free_tx_br (TYPE_3__*,struct qlnx_fastpath*) ;
 int qlnx_free_tx_dma_tag (TYPE_3__*) ;
 int qlnx_slowpath_stop (TYPE_3__*) ;
 scalar_t__ qlnx_vf_device (TYPE_3__*) ;

__attribute__((used)) static void
qlnx_release(qlnx_host_t *ha)
{
        device_t dev;
        int i;

        dev = ha->pci_dev;

 QL_DPRINT2(ha, "enter\n");

 for (i = 0; i < QLNX_MAX_HW_FUNCS; i++) {
  if (ha->idle_chk[i] != ((void*)0)) {
   free(ha->idle_chk[i], M_QLNXBUF);
   ha->idle_chk[i] = ((void*)0);
  }

  if (ha->grcdump[i] != ((void*)0)) {
   free(ha->grcdump[i], M_QLNXBUF);
   ha->grcdump[i] = ((void*)0);
  }
 }

        if (ha->flags.callout_init)
                callout_drain(&ha->qlnx_callout);

 if (ha->flags.slowpath_start) {
  qlnx_slowpath_stop(ha);
 }

        if (ha->flags.hw_init)
  ecore_hw_remove(&ha->cdev);

        qlnx_del_cdev(ha);

        if (ha->ifp != ((void*)0))
                ether_ifdetach(ha->ifp);

 qlnx_free_tx_dma_tag(ha);

 qlnx_free_rx_dma_tag(ha);

 qlnx_free_parent_dma_tag(ha);

 if (qlnx_vf_device(ha) != 0) {
  qlnx_destroy_error_recovery_taskqueue(ha);
 }

        for (i = 0; i < ha->num_rss; i++) {
  struct qlnx_fastpath *fp = &ha->fp_array[i];

                if (ha->irq_vec[i].handle) {
                        (void)bus_teardown_intr(dev, ha->irq_vec[i].irq,
                                        ha->irq_vec[i].handle);
                }

                if (ha->irq_vec[i].irq) {
                        (void)bus_release_resource(dev, SYS_RES_IRQ,
                                ha->irq_vec[i].irq_rid,
                                ha->irq_vec[i].irq);
                }

  qlnx_free_tx_br(ha, fp);
        }
 qlnx_destroy_fp_taskqueues(ha);

  for (i = 0; i < ha->cdev.num_hwfns; i++) {
         if (ha->sp_handle[i])
                 (void)bus_teardown_intr(dev, ha->sp_irq[i],
    ha->sp_handle[i]);

         if (ha->sp_irq[i])
   (void) bus_release_resource(dev, SYS_RES_IRQ,
    ha->sp_irq_rid[i], ha->sp_irq[i]);
 }

 qlnx_destroy_sp_taskqueues(ha);

        if (ha->msix_count)
                pci_release_msi(dev);

        if (ha->flags.lock_init) {
                mtx_destroy(&ha->hw_lock);
        }

        if (ha->pci_reg)
                (void) bus_release_resource(dev, SYS_RES_MEMORY, ha->reg_rid,
                                ha->pci_reg);

        if (ha->dbells_size && ha->pci_dbells)
                (void) bus_release_resource(dev, SYS_RES_MEMORY, ha->dbells_rid,
                                ha->pci_dbells);

        if (ha->msix_bar)
                (void) bus_release_resource(dev, SYS_RES_MEMORY, ha->msix_rid,
                                ha->msix_bar);

 QL_DPRINT2(ha, "exit\n");
 return;
}
