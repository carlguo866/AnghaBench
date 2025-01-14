
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct config_param {int rx_ring_num; scalar_t__ intr_type; scalar_t__ napi; } ;
struct mac_info {struct ring_info* rings; } ;
struct s2io_nic {int lro_max_aggr_per_sess; struct config_param config; int state; int alarm_timer; scalar_t__ all_multi_pos; scalar_t__ m_cast_flg; scalar_t__ promisc_flg; int napi; struct mac_info mac_control; struct net_device* dev; } ;
struct ring_info {int mtu; int lro; int napi; int rx_bufs_left; } ;
struct net_device {int mtu; int features; int name; } ;


 int DBG_PRINT (int ,char*,int,...) ;
 int EIO ;
 int ENABLE_INTRS ;
 int ENA_ALL_INTRS ;
 int ENODEV ;
 int ENOMEM ;
 int ERR_DBG ;
 int HZ ;
 int INFO_DBG ;
 scalar_t__ INTA ;
 scalar_t__ MSI_X ;
 int NETIF_F_LRO ;
 int RX_TRAFFIC_INTR ;
 int TX_PIC_INTR ;
 int TX_TRAFFIC_INTR ;
 int __S2IO_STATE_CARD_UP ;
 int en_dis_able_nic_intrs (struct s2io_nic*,int,int ) ;
 int en_dis_err_alarms (struct s2io_nic*,int ,int ) ;
 int fill_rx_buffers (struct s2io_nic*,struct ring_info*,int) ;
 int free_rx_buffers (struct s2io_nic*) ;
 int init_nic (struct s2io_nic*) ;
 scalar_t__ jiffies ;
 int lro_max_pkts ;
 int mod_timer (int *,scalar_t__) ;
 int napi_enable (int *) ;
 scalar_t__ s2io_add_isr (struct s2io_nic*) ;
 int s2io_alarm_handle ;
 int s2io_rem_isr (struct s2io_nic*) ;
 int s2io_reset (struct s2io_nic*) ;
 int s2io_set_multicast (struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ start_nic (struct s2io_nic*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int s2io_card_up(struct s2io_nic *sp)
{
 int i, ret = 0;
 struct config_param *config;
 struct mac_info *mac_control;
 struct net_device *dev = sp->dev;
 u16 interruptible;


 ret = init_nic(sp);
 if (ret != 0) {
  DBG_PRINT(ERR_DBG, "%s: H/W initialization failed\n",
     dev->name);
  if (ret != -EIO)
   s2io_reset(sp);
  return ret;
 }





 config = &sp->config;
 mac_control = &sp->mac_control;

 for (i = 0; i < config->rx_ring_num; i++) {
  struct ring_info *ring = &mac_control->rings[i];

  ring->mtu = dev->mtu;
  ring->lro = !!(dev->features & NETIF_F_LRO);
  ret = fill_rx_buffers(sp, ring, 1);
  if (ret) {
   DBG_PRINT(ERR_DBG, "%s: Out of memory in Open\n",
      dev->name);
   s2io_reset(sp);
   free_rx_buffers(sp);
   return -ENOMEM;
  }
  DBG_PRINT(INFO_DBG, "Buf in ring:%d is %d:\n", i,
     ring->rx_bufs_left);
 }


 if (config->napi) {
  if (config->intr_type == MSI_X) {
   for (i = 0; i < sp->config.rx_ring_num; i++)
    napi_enable(&sp->mac_control.rings[i].napi);
  } else {
   napi_enable(&sp->napi);
  }
 }


 if (sp->promisc_flg)
  sp->promisc_flg = 0;
 if (sp->m_cast_flg) {
  sp->m_cast_flg = 0;
  sp->all_multi_pos = 0;
 }


 s2io_set_multicast(dev);

 if (dev->features & NETIF_F_LRO) {

  sp->lro_max_aggr_per_sess = ((1<<16) - 1) / dev->mtu;

  if (lro_max_pkts < sp->lro_max_aggr_per_sess)
   sp->lro_max_aggr_per_sess = lro_max_pkts;
 }


 if (start_nic(sp)) {
  DBG_PRINT(ERR_DBG, "%s: Starting NIC failed\n", dev->name);
  s2io_reset(sp);
  free_rx_buffers(sp);
  return -ENODEV;
 }


 if (s2io_add_isr(sp) != 0) {
  if (sp->config.intr_type == MSI_X)
   s2io_rem_isr(sp);
  s2io_reset(sp);
  free_rx_buffers(sp);
  return -ENODEV;
 }

 timer_setup(&sp->alarm_timer, s2io_alarm_handle, 0);
 mod_timer(&sp->alarm_timer, jiffies + HZ / 2);

 set_bit(__S2IO_STATE_CARD_UP, &sp->state);


 en_dis_err_alarms(sp, ENA_ALL_INTRS, ENABLE_INTRS);
 if (sp->config.intr_type != INTA) {
  interruptible = TX_TRAFFIC_INTR | TX_PIC_INTR;
  en_dis_able_nic_intrs(sp, interruptible, ENABLE_INTRS);
 } else {
  interruptible = TX_TRAFFIC_INTR | RX_TRAFFIC_INTR;
  interruptible |= TX_PIC_INTR;
  en_dis_able_nic_intrs(sp, interruptible, ENABLE_INTRS);
 }

 return 0;
}
