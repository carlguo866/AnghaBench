
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsg_uep {struct usbhs_pipe* pipe; } ;
struct usbhsg_gpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int * handler; struct usbhsg_uep* mod_private; } ;
struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;


 int BRDYSTS ;
 int EIO ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_maxp (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_type (struct usb_endpoint_descriptor const*) ;
 int usbhs_fifo_dma_pop_handler ;
 int usbhs_fifo_dma_push_handler ;
 int usbhs_lock (struct usbhs_priv*,unsigned long) ;
 int usbhs_pipe_clear (struct usbhs_pipe*) ;
 int usbhs_pipe_config_update (struct usbhs_pipe*,int ,int ,int ) ;
 struct usbhs_pipe* usbhs_pipe_malloc (struct usbhs_priv*,int ,scalar_t__) ;
 int usbhs_pipe_number (struct usbhs_pipe*) ;
 int usbhs_pipe_sequence_data0 (struct usbhs_pipe*) ;
 int usbhs_unlock (struct usbhs_priv*,unsigned long) ;
 int usbhs_xxxsts_clear (struct usbhs_priv*,int ,int ) ;
 struct usbhsg_uep* usbhsg_ep_to_uep (struct usb_ep*) ;
 struct usbhs_priv* usbhsg_gpriv_to_priv (struct usbhsg_gpriv*) ;
 struct usbhsg_gpriv* usbhsg_uep_to_gpriv (struct usbhsg_uep*) ;

__attribute__((used)) static int usbhsg_ep_enable(struct usb_ep *ep,
    const struct usb_endpoint_descriptor *desc)
{
 struct usbhsg_uep *uep = usbhsg_ep_to_uep(ep);
 struct usbhsg_gpriv *gpriv = usbhsg_uep_to_gpriv(uep);
 struct usbhs_priv *priv = usbhsg_gpriv_to_priv(gpriv);
 struct usbhs_pipe *pipe;
 int ret = -EIO;
 unsigned long flags;

 usbhs_lock(priv, flags);





 if (uep->pipe) {
  usbhs_pipe_clear(uep->pipe);
  usbhs_pipe_sequence_data0(uep->pipe);
  ret = 0;
  goto usbhsg_ep_enable_end;
 }

 pipe = usbhs_pipe_malloc(priv,
     usb_endpoint_type(desc),
     usb_endpoint_dir_in(desc));
 if (pipe) {
  uep->pipe = pipe;
  pipe->mod_private = uep;


  usbhs_pipe_config_update(pipe, 0,
      usb_endpoint_num(desc),
      usb_endpoint_maxp(desc));






  if (usb_endpoint_dir_in(desc)) {
   pipe->handler = &usbhs_fifo_dma_push_handler;
  } else {
   pipe->handler = &usbhs_fifo_dma_pop_handler;
   usbhs_xxxsts_clear(priv, BRDYSTS,
        usbhs_pipe_number(pipe));
  }

  ret = 0;
 }

usbhsg_ep_enable_end:
 usbhs_unlock(priv, flags);

 return ret;
}
