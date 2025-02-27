
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCM_DTR ;
 int TIOCM_LOOP ;
 int TIOCM_OUT1 ;
 int TIOCM_OUT2 ;
 int TIOCM_RTS ;
 int UART_MCR_DTR ;
 int UART_MCR_LOOP ;
 int UART_MCR_OUT1 ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;

__attribute__((used)) static inline int serial8250_TIOCM_to_MCR(int tiocm)
{
 int mcr = 0;

 if (tiocm & TIOCM_RTS)
  mcr |= UART_MCR_RTS;
 if (tiocm & TIOCM_DTR)
  mcr |= UART_MCR_DTR;
 if (tiocm & TIOCM_OUT1)
  mcr |= UART_MCR_OUT1;
 if (tiocm & TIOCM_OUT2)
  mcr |= UART_MCR_OUT2;
 if (tiocm & TIOCM_LOOP)
  mcr |= UART_MCR_LOOP;

 return mcr;
}
