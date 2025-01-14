
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {scalar_t__ membase; } ;
struct qcom_geni_serial_port {int se; } ;


 int M_CMD_ABORT_EN ;
 int M_CMD_CANCEL_EN ;
 int M_CMD_DONE_EN ;
 int M_GENI_CMD_ACTIVE ;
 int M_TX_FIFO_WATERMARK_EN ;
 scalar_t__ SE_GENI_M_IRQ_CLEAR ;
 scalar_t__ SE_GENI_M_IRQ_EN ;
 int SE_GENI_M_IRQ_STATUS ;
 scalar_t__ SE_GENI_STATUS ;
 scalar_t__ SE_GENI_TX_WATERMARK_REG ;
 int geni_se_abort_m_cmd (int *) ;
 int geni_se_cancel_m_cmd (int *) ;
 int qcom_geni_serial_poll_bit (struct uart_port*,int ,int,int) ;
 int readl (scalar_t__) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void qcom_geni_serial_stop_tx(struct uart_port *uport)
{
 u32 irq_en;
 u32 status;
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);

 irq_en = readl(uport->membase + SE_GENI_M_IRQ_EN);
 irq_en &= ~(M_CMD_DONE_EN | M_TX_FIFO_WATERMARK_EN);
 writel(0, uport->membase + SE_GENI_TX_WATERMARK_REG);
 writel(irq_en, uport->membase + SE_GENI_M_IRQ_EN);
 status = readl(uport->membase + SE_GENI_STATUS);

 if (!(status & M_GENI_CMD_ACTIVE))
  return;

 geni_se_cancel_m_cmd(&port->se);
 if (!qcom_geni_serial_poll_bit(uport, SE_GENI_M_IRQ_STATUS,
      M_CMD_CANCEL_EN, 1)) {
  geni_se_abort_m_cmd(&port->se);
  qcom_geni_serial_poll_bit(uport, SE_GENI_M_IRQ_STATUS,
      M_CMD_ABORT_EN, 1);
  writel(M_CMD_ABORT_EN, uport->membase + SE_GENI_M_IRQ_CLEAR);
 }
 writel(M_CMD_CANCEL_EN, uport->membase + SE_GENI_M_IRQ_CLEAR);
}
