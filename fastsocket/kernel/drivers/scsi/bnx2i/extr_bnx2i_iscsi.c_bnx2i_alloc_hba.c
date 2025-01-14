
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iscsi_stats_info {int dummy; } ;
struct cnic_dev {TYPE_1__* pcidev; int netdev; } ;
struct bnx2i_hba {int max_sqes; scalar_t__ max_cqes; int num_ccell; int hba_shutdown_tmo; int conn_teardown_tmo; int conn_ctx_destroy_tmo; TYPE_1__* pcidev; int * regview; int stats; int stat_lock; int cnic_dev_type; int eh_wait; int net_dev_lock; int lock; void* max_rqes; void* max_active_conns; int mtu_supported; int ep_rdwr_lock; int ep_destroy_list; int ep_active_list; int ep_ofld_list; int reg_base; int pci_devno; int pci_func; int pci_svid; int pci_sdid; int pci_vid; int pci_did; int netdev; struct Scsi_Host* shost; } ;
struct Scsi_Host {int max_lun; int max_cmd_len; scalar_t__ max_channel; void* max_id; int transportt; int dma_boundary; } ;
struct TYPE_6__ {int dev; int devfn; int subsystem_vendor; int subsystem_device; int vendor; int device; int dma_mask; } ;


 scalar_t__ BNX2I_570X_CQ_WQES_MAX ;
 int BNX2I_570X_SQ_WQES_DEFAULT ;
 scalar_t__ BNX2I_570X_SQ_WQES_MAX ;
 scalar_t__ BNX2I_5770X_CQ_WQES_MAX ;
 int BNX2I_5770X_SQ_WQES_DEFAULT ;
 scalar_t__ BNX2I_5770X_SQ_WQES_MAX ;
 int BNX2I_MAX_MTU_SUPPORTED ;
 int BNX2I_NX2_DEV_5709 ;
 int BNX2I_NX2_DEV_57710 ;
 int BNX2_MQ_CONFIG2 ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 void* ISCSI_MAX_CONNS_PER_HBA ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int bnx2i_free_mp_bdt (struct bnx2i_hba*) ;
 int bnx2i_host_template ;
 int bnx2i_identify_device (struct bnx2i_hba*,struct cnic_dev*) ;
 int bnx2i_release_free_cid_que (struct bnx2i_hba*) ;
 int bnx2i_scsi_xport_template ;
 scalar_t__ bnx2i_setup_free_cid_que (struct bnx2i_hba*) ;
 int bnx2i_setup_host_queue_size (struct bnx2i_hba*,struct Scsi_Host*) ;
 scalar_t__ bnx2i_setup_mp_bdt (struct bnx2i_hba*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ iscsi_host_add (struct Scsi_Host*,int *) ;
 struct Scsi_Host* iscsi_host_alloc (int *,int,int ) ;
 struct bnx2i_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int memset (int *,int ,int) ;
 int mutex_init (int *) ;
 int pci_dev_get (TYPE_1__*) ;
 int pci_dev_put (TYPE_1__*) ;
 void* pci_iomap (TYPE_1__*,int ,int) ;
 int pci_iounmap (TYPE_1__*,int *) ;
 int pci_resource_start (TYPE_1__*,int ) ;
 void* rq_size ;
 int rwlock_init (int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int spin_lock_init (int *) ;
 scalar_t__ sq_size ;
 scalar_t__ test_bit (int ,int *) ;

struct bnx2i_hba *bnx2i_alloc_hba(struct cnic_dev *cnic)
{
 struct Scsi_Host *shost;
 struct bnx2i_hba *hba;

 shost = iscsi_host_alloc(&bnx2i_host_template, sizeof(*hba), 0);
 if (!shost)
  return ((void*)0);
 shost->dma_boundary = cnic->pcidev->dma_mask;
 shost->transportt = bnx2i_scsi_xport_template;
 shost->max_id = ISCSI_MAX_CONNS_PER_HBA;
 shost->max_channel = 0;
 shost->max_lun = 512;
 shost->max_cmd_len = 16;

 hba = iscsi_host_priv(shost);
 hba->shost = shost;
 hba->netdev = cnic->netdev;

 hba->pcidev = cnic->pcidev;
 pci_dev_get(hba->pcidev);
 hba->pci_did = hba->pcidev->device;
 hba->pci_vid = hba->pcidev->vendor;
 hba->pci_sdid = hba->pcidev->subsystem_device;
 hba->pci_svid = hba->pcidev->subsystem_vendor;
 hba->pci_func = PCI_FUNC(hba->pcidev->devfn);
 hba->pci_devno = PCI_SLOT(hba->pcidev->devfn);

 bnx2i_identify_device(hba, cnic);
 bnx2i_setup_host_queue_size(hba, shost);

 hba->reg_base = pci_resource_start(hba->pcidev, 0);
 if (test_bit(BNX2I_NX2_DEV_5709, &hba->cnic_dev_type)) {
  hba->regview = pci_iomap(hba->pcidev, 0, BNX2_MQ_CONFIG2);
  if (!hba->regview)
   goto ioreg_map_err;
 } else if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
  hba->regview = pci_iomap(hba->pcidev, 0, 4096);
  if (!hba->regview)
   goto ioreg_map_err;
 }

 if (bnx2i_setup_mp_bdt(hba))
  goto mp_bdt_mem_err;

 INIT_LIST_HEAD(&hba->ep_ofld_list);
 INIT_LIST_HEAD(&hba->ep_active_list);
 INIT_LIST_HEAD(&hba->ep_destroy_list);
 rwlock_init(&hba->ep_rdwr_lock);

 hba->mtu_supported = BNX2I_MAX_MTU_SUPPORTED;


 hba->max_active_conns = ISCSI_MAX_CONNS_PER_HBA;

 if (bnx2i_setup_free_cid_que(hba))
  goto cid_que_err;


 if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
  if (sq_size && sq_size <= BNX2I_5770X_SQ_WQES_MAX)
   hba->max_sqes = sq_size;
  else
   hba->max_sqes = BNX2I_5770X_SQ_WQES_DEFAULT;
 } else {
  if (sq_size && sq_size <= BNX2I_570X_SQ_WQES_MAX)
   hba->max_sqes = sq_size;
  else
   hba->max_sqes = BNX2I_570X_SQ_WQES_DEFAULT;
 }

 hba->max_rqes = rq_size;
 hba->max_cqes = hba->max_sqes + rq_size;
 if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
  if (hba->max_cqes > BNX2I_5770X_CQ_WQES_MAX)
   hba->max_cqes = BNX2I_5770X_CQ_WQES_MAX;
 } else if (hba->max_cqes > BNX2I_570X_CQ_WQES_MAX)
  hba->max_cqes = BNX2I_570X_CQ_WQES_MAX;

 hba->num_ccell = hba->max_sqes / 2;

 spin_lock_init(&hba->lock);
 mutex_init(&hba->net_dev_lock);
 init_waitqueue_head(&hba->eh_wait);
 if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type)) {
  hba->hba_shutdown_tmo = 30 * HZ;
  hba->conn_teardown_tmo = 20 * HZ;
  hba->conn_ctx_destroy_tmo = 6 * HZ;
 } else {
  hba->hba_shutdown_tmo = 20 * HZ;
  hba->conn_teardown_tmo = 10 * HZ;
  hba->conn_ctx_destroy_tmo = 2 * HZ;
 }




 memset(&hba->stats, 0, sizeof(struct iscsi_stats_info));

 if (iscsi_host_add(shost, &hba->pcidev->dev))
  goto free_dump_mem;
 return hba;

free_dump_mem:
 bnx2i_release_free_cid_que(hba);
cid_que_err:
 bnx2i_free_mp_bdt(hba);
mp_bdt_mem_err:
 if (hba->regview) {
  pci_iounmap(hba->pcidev, hba->regview);
  hba->regview = ((void*)0);
 }
ioreg_map_err:
 pci_dev_put(hba->pcidev);
 scsi_host_put(shost);
 return ((void*)0);
}
