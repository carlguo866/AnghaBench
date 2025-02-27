
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct f81534_port_private {int shadow_mcr; int mcr_mutex; } ;


 int F81534_MODEM_STATUS_REG ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DSR ;
 int UART_MSR_RI ;
 int f81534_get_port_register (struct usb_serial_port*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81534_tiocmget(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);
 int status;
 int r;
 u8 msr;
 u8 mcr;


 status = f81534_get_port_register(port, F81534_MODEM_STATUS_REG, &msr);
 if (status)
  return status;

 mutex_lock(&port_priv->mcr_mutex);
 mcr = port_priv->shadow_mcr;
 mutex_unlock(&port_priv->mcr_mutex);

 r = (mcr & UART_MCR_DTR ? TIOCM_DTR : 0) |
     (mcr & UART_MCR_RTS ? TIOCM_RTS : 0) |
     (msr & UART_MSR_CTS ? TIOCM_CTS : 0) |
     (msr & UART_MSR_DCD ? TIOCM_CAR : 0) |
     (msr & UART_MSR_RI ? TIOCM_RI : 0) |
     (msr & UART_MSR_DSR ? TIOCM_DSR : 0);

 return r;
}
