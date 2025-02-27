
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct lpuart_port {TYPE_1__ lpuart_timer; scalar_t__ dma_rx_timeout; } ;


 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int lpuart_timer_func ;
 int timer_setup (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void rx_dma_timer_init(struct lpuart_port *sport)
{
 timer_setup(&sport->lpuart_timer, lpuart_timer_func, 0);
 sport->lpuart_timer.expires = jiffies + sport->dma_rx_timeout;
 add_timer(&sport->lpuart_timer);
}
