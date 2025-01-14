
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usb_tx_sdu {int len; void (* callback ) (void*) ;int list; void* cb_data; scalar_t__ buf; } ;
struct tx_cxt {int lock; int sdu_list; } ;
struct sdu {void* nic_type; void* bearer_ID; void* dft_eps_ID; void* len; int data; void* cmd_evt; } ;
struct TYPE_2__ {int work; } ;
struct lte_udev {TYPE_1__ work_tx; int gdm_ed; int usbdev; struct tx_cxt tx; } ;


 int ETH_HLEN ;
 int HCI_HEADER_SIZE ;
 int LTE_TX_SDU ;
 int NIC_TYPE_ARP ;
 int SDU_PARAM_LEN ;
 int TX_NO_BUFFER ;
 int TX_NO_DEV ;
 int TX_NO_SPC ;
 void* gdm_cpu_to_dev16 (int ,int) ;
 void* gdm_cpu_to_dev32 (int ,int) ;
 struct usb_tx_sdu* get_tx_sdu_struct (struct tx_cxt*,int*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,void*,int) ;
 int pr_err (char*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gdm_usb_sdu_send(void *priv_dev, void *data, int len,
       unsigned int dft_eps_ID, unsigned int eps_ID,
       void (*cb)(void *data), void *cb_data,
       int dev_idx, int nic_type)
{
 struct lte_udev *udev = priv_dev;
 struct tx_cxt *tx = &udev->tx;
 struct usb_tx_sdu *t_sdu;
 struct sdu *sdu = ((void*)0);
 unsigned long flags;
 int no_spc = 0;
 u16 send_len;

 if (!udev->usbdev) {
  pr_err("sdu send - invalid device\n");
  return TX_NO_DEV;
 }

 spin_lock_irqsave(&tx->lock, flags);
 t_sdu = get_tx_sdu_struct(tx, &no_spc);
 spin_unlock_irqrestore(&tx->lock, flags);

 if (!t_sdu) {
  pr_err("sdu send - free list empty\n");
  return TX_NO_SPC;
 }

 sdu = (struct sdu *)t_sdu->buf;
 sdu->cmd_evt = gdm_cpu_to_dev16(udev->gdm_ed, LTE_TX_SDU);
 if (nic_type == NIC_TYPE_ARP) {
  send_len = len + SDU_PARAM_LEN;
  memcpy(sdu->data, data, len);
 } else {
  send_len = len - ETH_HLEN;
  send_len += SDU_PARAM_LEN;
  memcpy(sdu->data, data + ETH_HLEN, len - ETH_HLEN);
 }

 sdu->len = gdm_cpu_to_dev16(udev->gdm_ed, send_len);
 sdu->dft_eps_ID = gdm_cpu_to_dev32(udev->gdm_ed, dft_eps_ID);
 sdu->bearer_ID = gdm_cpu_to_dev32(udev->gdm_ed, eps_ID);
 sdu->nic_type = gdm_cpu_to_dev32(udev->gdm_ed, nic_type);

 t_sdu->len = send_len + HCI_HEADER_SIZE;
 t_sdu->callback = cb;
 t_sdu->cb_data = cb_data;

 spin_lock_irqsave(&tx->lock, flags);
 list_add_tail(&t_sdu->list, &tx->sdu_list);
 schedule_work(&udev->work_tx.work);
 spin_unlock_irqrestore(&tx->lock, flags);

 if (no_spc)
  return TX_NO_BUFFER;

 return 0;
}
