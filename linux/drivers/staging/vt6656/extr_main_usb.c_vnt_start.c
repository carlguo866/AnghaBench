
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_private {int int_interval; int interrupt_urb; TYPE_1__* usb; int flags; int rx_buf_sz; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_2__ {int dev; } ;


 int DEVICE_FLAGS_DISCONNECTED ;
 int MAX_TOTAL_SIZE_WITH_ALL_HEADERS ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int ieee80211_wake_queues (struct ieee80211_hw*) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int vnt_alloc_bufs (struct vnt_private*) ;
 int vnt_free_int_bufs (struct vnt_private*) ;
 int vnt_free_rx_bufs (struct vnt_private*) ;
 int vnt_free_tx_bufs (struct vnt_private*) ;
 int vnt_init_registers (struct vnt_private*) ;
 int vnt_int_start_interrupt (struct vnt_private*) ;
 int vnt_key_init_table (struct vnt_private*) ;

__attribute__((used)) static int vnt_start(struct ieee80211_hw *hw)
{
 int ret = 0;
 struct vnt_private *priv = hw->priv;

 priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;

 ret = vnt_alloc_bufs(priv);
 if (ret) {
  dev_dbg(&priv->usb->dev, "vnt_alloc_bufs fail...\n");
  goto err;
 }

 clear_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags);

 ret = vnt_init_registers(priv);
 if (ret) {
  dev_dbg(&priv->usb->dev, " init register fail\n");
  goto free_all;
 }

 ret = vnt_key_init_table(priv);
 if (ret)
  goto free_all;

 priv->int_interval = 1;

 ret = vnt_int_start_interrupt(priv);
 if (ret)
  goto free_all;

 ieee80211_wake_queues(hw);

 return 0;

free_all:
 vnt_free_rx_bufs(priv);
 vnt_free_tx_bufs(priv);
 vnt_free_int_bufs(priv);

 usb_kill_urb(priv->interrupt_urb);
 usb_free_urb(priv->interrupt_urb);
err:
 return ret;
}
