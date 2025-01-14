
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 scalar_t__ UART_LSR ;
 int UART_LSR_THRE ;
 scalar_t__ UART_TX ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int dtl1_write(unsigned int iobase, int fifo_size, __u8 *buf, int len)
{
 int actual = 0;


 if (!(inb(iobase + UART_LSR) & UART_LSR_THRE))
  return 0;


 while ((fifo_size-- > 0) && (actual < len)) {

  outb(buf[actual], iobase + UART_TX);
  actual++;
 }

 return actual;
}
