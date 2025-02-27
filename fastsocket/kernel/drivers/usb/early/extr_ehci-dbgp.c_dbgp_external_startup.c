
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_debug_descriptor {int bDebugOutEndpoint; } ;
typedef int dbgp_desc ;
struct TYPE_4__ {int control; } ;
struct TYPE_3__ {int * port_status; int command; } ;


 int CMD_RUN ;
 int DBGP_CLAIM ;
 int EIO ;
 int ENODEV ;
 int PORT_CONNECT ;
 int PORT_PE ;
 int PORT_TEST_PKT ;
 int USB_DEBUG_DEVNUM ;
 int USB_DEVICE_DEBUG_MODE ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_DT_DEBUG ;
 int USB_RECIP_DEVICE ;
 int USB_REQ_GET_DESCRIPTOR ;
 int USB_REQ_SET_ADDRESS ;
 int USB_REQ_SET_FEATURE ;
 int USB_TYPE_STANDARD ;
 int dbgp_bulk_write (int,int ,char*,int) ;
 int dbgp_control_msg (int,int,int ,int,int ,struct usb_debug_descriptor*,int) ;
 int dbgp_ehci_controller_reset () ;
 int dbgp_ehci_startup () ;
 int dbgp_ehci_status (char*) ;
 int dbgp_endpoint_out ;
 int dbgp_mdelay (int) ;
 scalar_t__ dbgp_not_safe ;
 int dbgp_phys_port ;
 int dbgp_printk (char*,...) ;
 TYPE_2__* ehci_debug ;
 TYPE_1__* ehci_regs ;
 int ehci_wait_for_port (int) ;
 int mdelay (int) ;
 int readl (int *) ;
 int writel (int,int *) ;

int dbgp_external_startup(void)
{
 int devnum;
 struct usb_debug_descriptor dbgp_desc;
 int ret;
 u32 ctrl, portsc, cmd;
 int dbg_port = dbgp_phys_port;
 int tries = 3;
 int reset_port_tries = 1;
 int try_hard_once = 1;

try_port_reset_again:
 ret = dbgp_ehci_startup();
 if (ret)
  return ret;


 ret = ehci_wait_for_port(dbg_port);
 if (ret < 0) {
  portsc = readl(&ehci_regs->port_status[dbg_port - 1]);
  if (!(portsc & PORT_CONNECT) && try_hard_once) {



   try_hard_once = 0;
   cmd = readl(&ehci_regs->command);
   cmd &= ~CMD_RUN;
   writel(cmd, &ehci_regs->command);
   portsc = readl(&ehci_regs->port_status[dbg_port - 1]);
   portsc |= PORT_TEST_PKT;
   writel(portsc, &ehci_regs->port_status[dbg_port - 1]);
   dbgp_ehci_status("Trying to force debug port online");
   mdelay(50);
   dbgp_ehci_controller_reset();
   goto try_port_reset_again;
  } else if (reset_port_tries--) {
   goto try_port_reset_again;
  }
  dbgp_printk("No device found in debug port\n");
  return -EIO;
 }
 dbgp_ehci_status("wait for port done");


 ctrl = readl(&ehci_debug->control);
 ctrl |= DBGP_CLAIM;
 writel(ctrl, &ehci_debug->control);
 ctrl = readl(&ehci_debug->control);
 if ((ctrl & DBGP_CLAIM) != DBGP_CLAIM) {
  dbgp_printk("No device in debug port\n");
  writel(ctrl & ~DBGP_CLAIM, &ehci_debug->control);
  return -ENODEV;
 }
 dbgp_ehci_status("debug ported enabled");


 portsc = readl(&ehci_regs->port_status[dbg_port - 1]);
 portsc &= ~PORT_PE;
 writel(portsc, &ehci_regs->port_status[dbg_port - 1]);

 dbgp_mdelay(100);

try_again:

 for (devnum = 0; devnum <= 127; devnum++) {
  ret = dbgp_control_msg(devnum,
   USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
   USB_REQ_GET_DESCRIPTOR, (USB_DT_DEBUG << 8), 0,
   &dbgp_desc, sizeof(dbgp_desc));
  if (ret > 0)
   break;
 }
 if (devnum > 127) {
  dbgp_printk("Could not find attached debug device\n");
  goto err;
 }
 if (ret < 0) {
  dbgp_printk("Attached device is not a debug device\n");
  goto err;
 }
 dbgp_endpoint_out = dbgp_desc.bDebugOutEndpoint;


 if (devnum != USB_DEBUG_DEVNUM) {
  ret = dbgp_control_msg(devnum,
   USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
   USB_REQ_SET_ADDRESS, USB_DEBUG_DEVNUM, 0, ((void*)0), 0);
  if (ret < 0) {
   dbgp_printk("Could not move attached device to %d\n",
    USB_DEBUG_DEVNUM);
   goto err;
  }
  devnum = USB_DEBUG_DEVNUM;
  dbgp_printk("debug device renamed to 127\n");
 }


 ret = dbgp_control_msg(USB_DEBUG_DEVNUM,
  USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
  USB_REQ_SET_FEATURE, USB_DEVICE_DEBUG_MODE, 0, ((void*)0), 0);
 if (ret < 0) {
  dbgp_printk(" Could not enable the debug device\n");
  goto err;
 }
 dbgp_printk("debug interface enabled\n");


 ret = dbgp_bulk_write(USB_DEBUG_DEVNUM, dbgp_endpoint_out, " ", 1);
 if (ret < 0) {
  dbgp_printk("dbgp_bulk_write failed: %d\n", ret);
  goto err;
 }
 dbgp_printk("small write doned\n");
 dbgp_not_safe = 0;

 return 0;
err:
 if (tries--)
  goto try_again;
 return -ENODEV;
}
