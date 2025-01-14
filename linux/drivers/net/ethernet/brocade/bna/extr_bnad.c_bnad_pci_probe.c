
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int hb_timer; int sem_timer; int ioc_timer; int iocpf_timer; } ;
struct TYPE_9__ {TYPE_3__ ioc; } ;
struct bna {TYPE_4__ ioceth; int enet; int stats; } ;
struct TYPE_7__ {int * bna_stats; } ;
struct bnad {int conf_mutex; int regdata; int * res_info; int bna_lock; struct bna bna; int * mod_res_info; int run_flags; int perm_addr; TYPE_2__ stats; int bar0; TYPE_1__* pcidev; scalar_t__ id; } ;
struct bfa_pcidev {int pci_bar_kva; int device_id; int pci_func; int pci_slot; } ;
struct TYPE_10__ {scalar_t__ num_rxp; scalar_t__ num_txq; } ;
struct TYPE_6__ {int device; int devfn; } ;


 scalar_t__ BNAD_NUM_RXP ;
 scalar_t__ BNAD_NUM_TXQ ;
 int BNAD_RF_NETDEV_REGISTERED ;
 int BNA_MOD_RES_T_MAX ;
 int BNA_RES_T_MAX ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 struct net_device* alloc_etherdev (int) ;
 scalar_t__ atomic_inc_return (int *) ;
 TYPE_5__* bna_attr (struct bna*) ;
 scalar_t__ bna_debugfs_enable ;
 int bna_enet_perm_mac_get (int *,int ) ;
 int bna_id ;
 int bna_init (struct bna*,struct bnad*,struct bfa_pcidev*,int *) ;
 int bna_mod_init (struct bna*,int *) ;
 int bna_mod_res_req (struct bna*,int *) ;
 scalar_t__ bna_num_rxp_set (struct bna*,scalar_t__) ;
 scalar_t__ bna_num_txq_set (struct bna*,scalar_t__) ;
 int bna_res_req (int *) ;
 int bna_uninit (struct bna*) ;
 int bnad_debugfs_init (struct bnad*) ;
 int bnad_debugfs_uninit (struct bnad*) ;
 int bnad_disable_msix (struct bnad*) ;
 int bnad_enable_msix (struct bnad*) ;
 int bnad_fwimg_mutex ;
 int bnad_init (struct bnad*,struct pci_dev*,struct net_device*) ;
 int bnad_ioc_hb_check ;
 int bnad_ioc_timeout ;
 int bnad_ioceth_disable (struct bnad*) ;
 int bnad_ioceth_enable (struct bnad*) ;
 int bnad_iocpf_sem_timeout ;
 int bnad_iocpf_timeout ;
 int bnad_lock_init (struct bnad*) ;
 int bnad_lock_uninit (struct bnad*) ;
 int bnad_mbox_irq_alloc (struct bnad*) ;
 int bnad_mbox_irq_free (struct bnad*) ;
 int bnad_netdev_init (struct bnad*,int) ;
 int bnad_pci_init (struct bnad*,struct pci_dev*,int*) ;
 int bnad_pci_uninit (struct pci_dev*) ;
 int bnad_q_num_adjust (struct bnad*,scalar_t__,scalar_t__) ;
 int bnad_res_alloc (struct bnad*,int *,int ) ;
 int bnad_res_free (struct bnad*,int *,int ) ;
 int bnad_set_netdev_perm_addr (struct bnad*) ;
 int bnad_uninit (struct bnad*) ;
 int cna_get_firmware_buf (struct pci_dev*) ;
 int del_timer_sync (int *) ;
 int dev_err (int *,char*,...) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
bnad_pci_probe(struct pci_dev *pdev,
  const struct pci_device_id *pcidev_id)
{
 bool using_dac;
 int err;
 struct bnad *bnad;
 struct bna *bna;
 struct net_device *netdev;
 struct bfa_pcidev pcidev_info;
 unsigned long flags;

 mutex_lock(&bnad_fwimg_mutex);
 if (!cna_get_firmware_buf(pdev)) {
  mutex_unlock(&bnad_fwimg_mutex);
  dev_err(&pdev->dev, "failed to load firmware image!\n");
  return -ENODEV;
 }
 mutex_unlock(&bnad_fwimg_mutex);





 netdev = alloc_etherdev(sizeof(struct bnad));
 if (!netdev) {
  err = -ENOMEM;
  return err;
 }
 bnad = netdev_priv(netdev);
 bnad_lock_init(bnad);
 bnad->id = atomic_inc_return(&bna_id) - 1;

 mutex_lock(&bnad->conf_mutex);





 using_dac = 0;
 err = bnad_pci_init(bnad, pdev, &using_dac);
 if (err)
  goto unlock_mutex;





 err = bnad_init(bnad, pdev, netdev);
 if (err)
  goto pci_uninit;


 bnad_netdev_init(bnad, using_dac);


 netif_carrier_off(netdev);


 if (bna_debugfs_enable)
  bnad_debugfs_init(bnad);


 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_res_req(&bnad->res_info[0]);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);


 err = bnad_res_alloc(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
 if (err)
  goto drv_uninit;

 bna = &bnad->bna;


 pcidev_info.pci_slot = PCI_SLOT(bnad->pcidev->devfn);
 pcidev_info.pci_func = PCI_FUNC(bnad->pcidev->devfn);
 pcidev_info.device_id = bnad->pcidev->device;
 pcidev_info.pci_bar_kva = bnad->bar0;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_init(bna, bnad, &pcidev_info, &bnad->res_info[0]);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 bnad->stats.bna_stats = &bna->stats;

 bnad_enable_msix(bnad);
 err = bnad_mbox_irq_alloc(bnad);
 if (err)
  goto res_free;


 timer_setup(&bnad->bna.ioceth.ioc.ioc_timer, bnad_ioc_timeout, 0);
 timer_setup(&bnad->bna.ioceth.ioc.hb_timer, bnad_ioc_hb_check, 0);
 timer_setup(&bnad->bna.ioceth.ioc.iocpf_timer, bnad_iocpf_timeout, 0);
 timer_setup(&bnad->bna.ioceth.ioc.sem_timer, bnad_iocpf_sem_timeout,
      0);






 err = bnad_ioceth_enable(bnad);
 if (err) {
  dev_err(&pdev->dev, "initialization failed err=%d\n", err);
  goto probe_success;
 }

 spin_lock_irqsave(&bnad->bna_lock, flags);
 if (bna_num_txq_set(bna, BNAD_NUM_TXQ + 1) ||
  bna_num_rxp_set(bna, BNAD_NUM_RXP + 1)) {
  bnad_q_num_adjust(bnad, bna_attr(bna)->num_txq - 1,
   bna_attr(bna)->num_rxp - 1);
  if (bna_num_txq_set(bna, BNAD_NUM_TXQ + 1) ||
   bna_num_rxp_set(bna, BNAD_NUM_RXP + 1))
   err = -EIO;
 }
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 if (err)
  goto disable_ioceth;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_mod_res_req(&bnad->bna, &bnad->mod_res_info[0]);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 err = bnad_res_alloc(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
 if (err) {
  err = -EIO;
  goto disable_ioceth;
 }

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_mod_init(&bnad->bna, &bnad->mod_res_info[0]);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);


 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_enet_perm_mac_get(&bna->enet, bnad->perm_addr);
 bnad_set_netdev_perm_addr(bnad);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 mutex_unlock(&bnad->conf_mutex);


 err = register_netdev(netdev);
 if (err) {
  dev_err(&pdev->dev, "registering net device failed\n");
  goto probe_uninit;
 }
 set_bit(BNAD_RF_NETDEV_REGISTERED, &bnad->run_flags);

 return 0;

probe_success:
 mutex_unlock(&bnad->conf_mutex);
 return 0;

probe_uninit:
 mutex_lock(&bnad->conf_mutex);
 bnad_res_free(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
disable_ioceth:
 bnad_ioceth_disable(bnad);
 del_timer_sync(&bnad->bna.ioceth.ioc.ioc_timer);
 del_timer_sync(&bnad->bna.ioceth.ioc.sem_timer);
 del_timer_sync(&bnad->bna.ioceth.ioc.hb_timer);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_uninit(bna);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 bnad_mbox_irq_free(bnad);
 bnad_disable_msix(bnad);
res_free:
 bnad_res_free(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
drv_uninit:

 kfree(bnad->regdata);
 bnad_debugfs_uninit(bnad);
 bnad_uninit(bnad);
pci_uninit:
 bnad_pci_uninit(pdev);
unlock_mutex:
 mutex_unlock(&bnad->conf_mutex);
 bnad_lock_uninit(bnad);
 free_netdev(netdev);
 return err;
}
