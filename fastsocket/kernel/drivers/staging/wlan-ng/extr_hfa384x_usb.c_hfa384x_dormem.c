
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int usbctlx_rmem_completor_t ;
typedef int u16 ;
struct TYPE_11__ {int rmemresp; } ;
struct TYPE_9__ {void* page; void* offset; void* frmlen; void* type; } ;
struct TYPE_10__ {TYPE_1__ rmemreq; } ;
struct TYPE_12__ {int outbufsize; TYPE_3__ inbuf; void* usercb_data; int usercb; int cmdcb; scalar_t__ reapable; TYPE_2__ outbuf; } ;
typedef TYPE_4__ hfa384x_usbctlx_t ;
typedef int hfa384x_t ;
typedef int ctlx_usercb_t ;
typedef int ctlx_cmdcb_t ;
typedef scalar_t__ CMD_MODE ;


 scalar_t__ DOWAIT ;
 int ENOMEM ;
 int HFA384x_USB_RMEMREQ ;
 int ROUNDUP64 (int) ;
 void* cpu_to_le16 (int) ;
 int hfa384x_usbctlx_complete_sync (int *,TYPE_4__*,int ) ;
 int hfa384x_usbctlx_submit (int *,TYPE_4__*) ;
 int init_rmem_completor (int *,int *,void*,unsigned int) ;
 int kfree (TYPE_4__*) ;
 int pr_debug (char*,int ,...) ;
 TYPE_4__* usbctlx_alloc () ;

__attribute__((used)) static int
hfa384x_dormem(hfa384x_t *hw,
        CMD_MODE mode,
        u16 page,
        u16 offset,
        void *data,
        unsigned int len,
        ctlx_cmdcb_t cmdcb, ctlx_usercb_t usercb, void *usercb_data)
{
 int result;
 hfa384x_usbctlx_t *ctlx;

 ctlx = usbctlx_alloc();
 if (ctlx == ((void*)0)) {
  result = -ENOMEM;
  goto done;
 }


 ctlx->outbuf.rmemreq.type = cpu_to_le16(HFA384x_USB_RMEMREQ);
 ctlx->outbuf.rmemreq.frmlen =
     cpu_to_le16(sizeof(ctlx->outbuf.rmemreq.offset) +
   sizeof(ctlx->outbuf.rmemreq.page) + len);
 ctlx->outbuf.rmemreq.offset = cpu_to_le16(offset);
 ctlx->outbuf.rmemreq.page = cpu_to_le16(page);

 ctlx->outbufsize = sizeof(ctlx->outbuf.rmemreq);

 pr_debug("type=0x%04x frmlen=%d offset=0x%04x page=0x%04x\n",
   ctlx->outbuf.rmemreq.type,
   ctlx->outbuf.rmemreq.frmlen,
   ctlx->outbuf.rmemreq.offset, ctlx->outbuf.rmemreq.page);

 pr_debug("pktsize=%zd\n", ROUNDUP64(sizeof(ctlx->outbuf.rmemreq)));

 ctlx->reapable = mode;
 ctlx->cmdcb = cmdcb;
 ctlx->usercb = usercb;
 ctlx->usercb_data = usercb_data;

 result = hfa384x_usbctlx_submit(hw, ctlx);
 if (result != 0) {
  kfree(ctlx);
 } else if (mode == DOWAIT) {
  usbctlx_rmem_completor_t completor;

  result =
      hfa384x_usbctlx_complete_sync(hw, ctlx,
        init_rmem_completor
        (&completor,
         &ctlx->inbuf.rmemresp, data,
         len));
 }

done:
 return result;
}
