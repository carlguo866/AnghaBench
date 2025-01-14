
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct intf_priv {int dummy; } ;
struct intf_hdl {struct intf_priv* pintfpriv; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;
 int r8712_usbctrl_vendorreq (struct intf_priv*,int,int,int,int *,int,int) ;

__attribute__((used)) static void usb_write32(struct intf_hdl *intfhdl, u32 addr, u32 val)
{
 u8 request;
 u8 requesttype;
 u16 wvalue;
 u16 index;
 u16 len;
 __le32 data;
 struct intf_priv *intfpriv = intfhdl->pintfpriv;

 request = 0x05;
 requesttype = 0x00;
 index = 0;
 wvalue = (u16)(addr & 0x0000ffff);
 len = 4;
 data = cpu_to_le32(val);
 r8712_usbctrl_vendorreq(intfpriv, request, wvalue, index, &data, len,
    requesttype);
}
