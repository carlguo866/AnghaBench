
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int irq; int dev; scalar_t__ membase; } ;
struct stm32_usart_offsets {int cr1; scalar_t__ isr; } ;
struct stm32_usart_config {int uart_enable_bit; } ;
struct stm32_port {int cr1_irq; scalar_t__ fifoen; TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_config cfg; struct stm32_usart_offsets ofs; } ;


 int BIT (int ) ;
 int USART_CR1_FIFOEN ;
 int USART_CR1_RE ;
 int USART_CR1_TE ;
 int USART_CR1_TXEIE ;
 int USART_SR_TC ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct uart_port*) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;
 int stm32_clr_bits (struct uart_port*,int ,int) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static void stm32_shutdown(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 struct stm32_usart_config *cfg = &stm32_port->info->cfg;
 u32 val, isr;
 int ret;

 val = USART_CR1_TXEIE | USART_CR1_TE;
 val |= stm32_port->cr1_irq | USART_CR1_RE;
 val |= BIT(cfg->uart_enable_bit);
 if (stm32_port->fifoen)
  val |= USART_CR1_FIFOEN;

 ret = readl_relaxed_poll_timeout(port->membase + ofs->isr,
      isr, (isr & USART_SR_TC),
      10, 100000);

 if (ret)
  dev_err(port->dev, "transmission complete not set\n");

 stm32_clr_bits(port, ofs->cr1, val);

 free_irq(port->irq, port);
}
