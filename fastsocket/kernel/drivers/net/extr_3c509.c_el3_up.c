
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int irq; int if_port; int name; int * dev_addr; } ;


 int AckIntr ;
 int EL3WINDOW (int) ;
 int EL3_CMD ;
 int FD_ENABLE ;
 int IntLatch ;
 int IntReq ;
 int MEDIA_TP ;
 int RxBroadcast ;
 int RxComplete ;
 int RxEarly ;
 int RxEnable ;
 int RxStation ;
 int SetIntrEnb ;
 int SetRxFilter ;
 int SetStatusEnb ;
 int StartCoax ;
 int StatsDisable ;
 int StatsEnable ;
 int StatsFull ;
 int TxAvailable ;
 int TxComplete ;
 int TxEnable ;
 int WN0_IRQ ;
 int WN4_MEDIA ;
 int WN4_NETDIAG ;
 int el3_debug ;
 int inb (int) ;
 int inw (int) ;
 int netif_start_queue (struct net_device*) ;
 int outb (int ,int) ;
 int outw (int,int) ;
 int pr_cont (char*,...) ;
 int pr_debug (char*,int ,int) ;
 int pr_info (char*,int ) ;
 int read_eeprom (int,int) ;

__attribute__((used)) static void
el3_up(struct net_device *dev)
{
 int i, sw_info, net_diag;
 int ioaddr = dev->base_addr;


 outw(0x0001, ioaddr + 4);


 outw((dev->irq << 12) | 0x0f00, ioaddr + WN0_IRQ);


 EL3WINDOW(2);

 for (i = 0; i < 6; i++)
  outb(dev->dev_addr[i], ioaddr + i);

 if ((dev->if_port & 0x03) == 3)

  outw(StartCoax, ioaddr + EL3_CMD);
 else if ((dev->if_port & 0x03) == 0) {


  EL3WINDOW(0);
  sw_info = (read_eeprom(ioaddr, 0x14) & 0x400f) |
   (read_eeprom(ioaddr, 0x0d) & 0xBff0);

  EL3WINDOW(4);
  net_diag = inw(ioaddr + WN4_NETDIAG);
  net_diag = (net_diag | FD_ENABLE);
  pr_info("%s: ", dev->name);
  switch (dev->if_port & 0x0c) {
   case 12:

    if (sw_info & 0x000f) {
     pr_cont("Forcing 3c5x9b full-duplex mode");
     break;
    }
   case 8:

    if ((sw_info & 0x000f) && (sw_info & 0x8000)) {
     pr_cont("Setting 3c5x9b full-duplex mode (from EEPROM configuration bit)");
     break;
    }
   default:

    pr_cont("Setting 3c5x9/3c5x9B half-duplex mode");
    net_diag = (net_diag & ~FD_ENABLE);
  }

  outw(net_diag, ioaddr + WN4_NETDIAG);
  pr_cont(" if_port: %d, sw_info: %4.4x\n", dev->if_port, sw_info);
  if (el3_debug > 3)
   pr_debug("%s: 3c5x9 net diag word is now: %4.4x.\n", dev->name, net_diag);

  outw(inw(ioaddr + WN4_MEDIA) | MEDIA_TP, ioaddr + WN4_MEDIA);
 }


 outw(StatsDisable, ioaddr + EL3_CMD);
 EL3WINDOW(6);
 for (i = 0; i < 9; i++)
  inb(ioaddr + i);
 inw(ioaddr + 10);
 inw(ioaddr + 12);


 EL3WINDOW(1);


 outw(SetRxFilter | RxStation | RxBroadcast, ioaddr + EL3_CMD);
 outw(StatsEnable, ioaddr + EL3_CMD);

 outw(RxEnable, ioaddr + EL3_CMD);
 outw(TxEnable, ioaddr + EL3_CMD);

 outw(SetStatusEnb | 0xff, ioaddr + EL3_CMD);

 outw(AckIntr | IntLatch | TxAvailable | RxEarly | IntReq,
   ioaddr + EL3_CMD);
 outw(SetIntrEnb | IntLatch|TxAvailable|TxComplete|RxComplete|StatsFull,
   ioaddr + EL3_CMD);

 netif_start_queue(dev);
}
