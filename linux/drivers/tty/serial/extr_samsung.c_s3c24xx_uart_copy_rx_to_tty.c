
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_3__ {int rx; } ;
struct TYPE_4__ {int dev; TYPE_1__ icount; } ;
struct s3c24xx_uart_port {TYPE_2__ port; struct s3c24xx_uart_dma* dma; } ;
struct s3c24xx_uart_dma {scalar_t__ rx_buf; int rx_size; int rx_addr; } ;


 int DMA_FROM_DEVICE ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int tty_insert_flip_string (struct tty_port*,unsigned char*,int) ;

__attribute__((used)) static void s3c24xx_uart_copy_rx_to_tty(struct s3c24xx_uart_port *ourport,
  struct tty_port *tty, int count)
{
 struct s3c24xx_uart_dma *dma = ourport->dma;
 int copied;

 if (!count)
  return;

 dma_sync_single_for_cpu(ourport->port.dev, dma->rx_addr,
    dma->rx_size, DMA_FROM_DEVICE);

 ourport->port.icount.rx += count;
 if (!tty) {
  dev_err(ourport->port.dev, "No tty port\n");
  return;
 }
 copied = tty_insert_flip_string(tty,
   ((unsigned char *)(ourport->dma->rx_buf)), count);
 if (copied != count) {
  WARN_ON(1);
  dev_err(ourport->port.dev, "RxData copy to tty layer failed\n");
 }
}
