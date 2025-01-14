
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_usb_priv {int dummy; } ;
struct rtl_usb {int out_ep_nums; int out_queue_sel; } ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int EINVAL ;
 scalar_t__ REG_NORMAL_SIE_EP ;
 int TX_SELE_HQ ;
 int TX_SELE_LQ ;
 int TX_SELE_NQ ;
 int USB_NORMAL_SIE_EP_MASK ;
 int USB_NORMAL_SIE_EP_SHIFT ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 struct rtl_usb* rtl_usbdev (struct rtl_usb_priv*) ;
 struct rtl_usb_priv* rtl_usbpriv (struct ieee80211_hw*) ;

__attribute__((used)) static int configvernoutep(struct ieee80211_hw *hw)
{
 u8 ep_cfg;
 u8 ep_nums = 0;

 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_usb_priv *usb_priv = rtl_usbpriv(hw);
 struct rtl_usb *rtlusb = rtl_usbdev(usb_priv);

 rtlusb->out_queue_sel = 0;

 ep_cfg = rtl_read_byte(rtlpriv, (REG_NORMAL_SIE_EP + 1));
 if (ep_cfg & USB_NORMAL_SIE_EP_MASK) {
  rtlusb->out_queue_sel |= TX_SELE_HQ;
  ep_nums++;
 }
 if ((ep_cfg >> USB_NORMAL_SIE_EP_SHIFT) & USB_NORMAL_SIE_EP_MASK) {
  rtlusb->out_queue_sel |= TX_SELE_NQ;
  ep_nums++;
 }

 ep_cfg = rtl_read_byte(rtlpriv, (REG_NORMAL_SIE_EP + 2));
 if (ep_cfg & USB_NORMAL_SIE_EP_MASK) {
  rtlusb->out_queue_sel |= TX_SELE_LQ;
  ep_nums++;
 }
 return (rtlusb->out_ep_nums == ep_nums) ? 0 : -EINVAL;
}
