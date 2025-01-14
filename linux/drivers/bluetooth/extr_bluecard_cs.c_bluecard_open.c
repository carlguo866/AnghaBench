
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hci_dev {int send; int flush; int close; int open; int bus; } ;
struct bluecard_info {int ctrl_reg; struct hci_dev* hdev; int txq; int hw_state; int tx_state; TYPE_2__* p_dev; int * rx_skb; scalar_t__ rx_count; int rx_state; int timer; int lock; } ;
struct TYPE_4__ {int dev; TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;


 int BT_ERR (char*) ;
 int CARD_HAS_ACTIVITY_LED ;
 int CARD_HAS_PCCARD_ID ;
 int CARD_HAS_POWER_LED ;
 int CARD_READY ;
 int ENODEV ;
 int ENOMEM ;
 int HCI_PCCARD ;
 int RECV_WAIT_PACKET_TYPE ;
 unsigned int REG_COMMAND ;
 int REG_COMMAND_RX_BUF_ONE ;
 int REG_COMMAND_RX_BUF_TWO ;
 unsigned int REG_CONTROL ;
 int REG_CONTROL_BT_ON ;
 int REG_CONTROL_BT_RESET ;
 int REG_CONTROL_BT_RES_PU ;
 int REG_CONTROL_CARD_RESET ;
 int REG_CONTROL_INTERRUPT ;
 int REG_CONTROL_RTS ;
 unsigned int REG_INTERRUPT ;
 unsigned int REG_RX_CONTROL ;
 int RTS_LEVEL_SHIFT_BITS ;
 int SET_HCIDEV_DEV (struct hci_dev*,int *) ;
 int XMIT_BUF_ONE_READY ;
 int XMIT_BUF_TWO_READY ;
 int XMIT_SENDING_READY ;
 int bluecard_activity_led_timeout ;
 int bluecard_hci_close ;
 int bluecard_hci_flush ;
 int bluecard_hci_open ;
 int bluecard_hci_send_frame ;
 struct hci_dev* hci_alloc_dev () ;
 int hci_free_dev (struct hci_dev*) ;
 scalar_t__ hci_register_dev (struct hci_dev*) ;
 int hci_set_drvdata (struct hci_dev*,struct bluecard_info*) ;
 unsigned char inb (unsigned int) ;
 int msleep (int) ;
 int outb (int,unsigned int) ;
 int set_bit (int ,int *) ;
 int skb_queue_head_init (int *) ;
 int skb_queue_purge (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int bluecard_open(struct bluecard_info *info)
{
 unsigned int iobase = info->p_dev->resource[0]->start;
 struct hci_dev *hdev;
 unsigned char id;

 spin_lock_init(&(info->lock));

 timer_setup(&info->timer, bluecard_activity_led_timeout, 0);

 skb_queue_head_init(&(info->txq));

 info->rx_state = RECV_WAIT_PACKET_TYPE;
 info->rx_count = 0;
 info->rx_skb = ((void*)0);


 hdev = hci_alloc_dev();
 if (!hdev) {
  BT_ERR("Can't allocate HCI device");
  return -ENOMEM;
 }

 info->hdev = hdev;

 hdev->bus = HCI_PCCARD;
 hci_set_drvdata(hdev, info);
 SET_HCIDEV_DEV(hdev, &info->p_dev->dev);

 hdev->open = bluecard_hci_open;
 hdev->close = bluecard_hci_close;
 hdev->flush = bluecard_hci_flush;
 hdev->send = bluecard_hci_send_frame;

 id = inb(iobase + 0x30);

 if ((id & 0x0f) == 0x02)
  set_bit(CARD_HAS_PCCARD_ID, &(info->hw_state));

 if (id & 0x10)
  set_bit(CARD_HAS_POWER_LED, &(info->hw_state));

 if (id & 0x20)
  set_bit(CARD_HAS_ACTIVITY_LED, &(info->hw_state));


 info->ctrl_reg = REG_CONTROL_BT_RESET | REG_CONTROL_CARD_RESET;
 outb(info->ctrl_reg, iobase + REG_CONTROL);


 outb(0x80, iobase + 0x30);


 msleep(10);


 outb(0x00, iobase + 0x30);


 info->ctrl_reg = REG_CONTROL_BT_ON | REG_CONTROL_BT_RES_PU;
 outb(info->ctrl_reg, iobase + REG_CONTROL);


 outb(0xff, iobase + REG_INTERRUPT);
 info->ctrl_reg |= REG_CONTROL_INTERRUPT;
 outb(info->ctrl_reg, iobase + REG_CONTROL);

 if ((id & 0x0f) == 0x03) {

  info->ctrl_reg |= REG_CONTROL_RTS;
  outb(info->ctrl_reg, iobase + REG_CONTROL);


  info->ctrl_reg |= 0x03;
  outb(info->ctrl_reg, iobase + REG_CONTROL);


  info->ctrl_reg &= ~REG_CONTROL_RTS;
  outb(info->ctrl_reg, iobase + REG_CONTROL);

  set_bit(XMIT_BUF_ONE_READY, &(info->tx_state));
  set_bit(XMIT_BUF_TWO_READY, &(info->tx_state));
  set_bit(XMIT_SENDING_READY, &(info->tx_state));
 }


 outb(REG_COMMAND_RX_BUF_ONE, iobase + REG_COMMAND);
 outb(REG_COMMAND_RX_BUF_TWO, iobase + REG_COMMAND);


 set_bit(CARD_READY, &(info->hw_state));


 skb_queue_purge(&(info->txq));


 outb((0x0f << RTS_LEVEL_SHIFT_BITS) | 1, iobase + REG_RX_CONTROL);


 msleep(1250);


 if (hci_register_dev(hdev) < 0) {
  BT_ERR("Can't register HCI device");
  info->hdev = ((void*)0);
  hci_free_dev(hdev);
  return -ENODEV;
 }

 return 0;
}
