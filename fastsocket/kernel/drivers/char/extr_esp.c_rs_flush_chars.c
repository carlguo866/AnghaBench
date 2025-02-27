
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ stopped; int name; struct esp_struct* driver_data; } ;
struct esp_struct {scalar_t__ xmit_cnt; int IER; int lock; int xmit_buf; } ;


 int ESI_SET_SRV_MASK ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_IER_THRI ;
 int serial_out (struct esp_struct*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rs_flush_chars(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_flush_chars"))
  return;

 spin_lock_irqsave(&info->lock, flags);

 if (info->xmit_cnt <= 0 || tty->stopped || !info->xmit_buf)
  goto out;

 if (!(info->IER & UART_IER_THRI)) {
  info->IER |= UART_IER_THRI;
  serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
  serial_out(info, UART_ESI_CMD2, info->IER);
 }
out:
 spin_unlock_irqrestore(&info->lock, flags);
}
