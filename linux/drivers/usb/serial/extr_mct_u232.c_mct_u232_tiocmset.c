
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mct_u232_private {unsigned int control_state; int lock; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int mct_u232_set_modem_ctrl (struct usb_serial_port*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mct_u232_tiocmset(struct tty_struct *tty,
         unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct mct_u232_private *priv = usb_get_serial_port_data(port);
 unsigned int control_state;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 control_state = priv->control_state;

 if (set & TIOCM_RTS)
  control_state |= TIOCM_RTS;
 if (set & TIOCM_DTR)
  control_state |= TIOCM_DTR;
 if (clear & TIOCM_RTS)
  control_state &= ~TIOCM_RTS;
 if (clear & TIOCM_DTR)
  control_state &= ~TIOCM_DTR;

 priv->control_state = control_state;
 spin_unlock_irqrestore(&priv->lock, flags);
 return mct_u232_set_modem_ctrl(port, control_state);
}
