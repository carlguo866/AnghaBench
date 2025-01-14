
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_qup {int error; int done; int mode; scalar_t__ base; int lock; int dev; } ;
typedef int irqreturn_t ;


 int EIO ;
 int IRQ_HANDLED ;
 scalar_t__ QUP_ERROR_FLAGS ;
 int QUP_ERROR_INPUT_OVER_RUN ;
 int QUP_ERROR_INPUT_UNDER_RUN ;
 int QUP_ERROR_OUTPUT_OVER_RUN ;
 int QUP_ERROR_OUTPUT_UNDER_RUN ;
 scalar_t__ QUP_OPERATIONAL ;
 int QUP_OP_IN_SERVICE_FLAG ;
 int QUP_OP_MAX_INPUT_DONE_FLAG ;
 int QUP_OP_OUT_SERVICE_FLAG ;
 int SPI_ERROR_CLK_OVER_RUN ;
 int SPI_ERROR_CLK_UNDER_RUN ;
 scalar_t__ SPI_ERROR_FLAGS ;
 int complete (int *) ;
 int dev_warn (int ,char*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ spi_qup_data_pending (struct spi_qup*) ;
 scalar_t__ spi_qup_is_dma_xfer (int ) ;
 int spi_qup_read (struct spi_qup*,int*) ;
 int spi_qup_write (struct spi_qup*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t spi_qup_qup_irq(int irq, void *dev_id)
{
 struct spi_qup *controller = dev_id;
 u32 opflags, qup_err, spi_err;
 unsigned long flags;
 int error = 0;

 qup_err = readl_relaxed(controller->base + QUP_ERROR_FLAGS);
 spi_err = readl_relaxed(controller->base + SPI_ERROR_FLAGS);
 opflags = readl_relaxed(controller->base + QUP_OPERATIONAL);

 writel_relaxed(qup_err, controller->base + QUP_ERROR_FLAGS);
 writel_relaxed(spi_err, controller->base + SPI_ERROR_FLAGS);

 if (qup_err) {
  if (qup_err & QUP_ERROR_OUTPUT_OVER_RUN)
   dev_warn(controller->dev, "OUTPUT_OVER_RUN\n");
  if (qup_err & QUP_ERROR_INPUT_UNDER_RUN)
   dev_warn(controller->dev, "INPUT_UNDER_RUN\n");
  if (qup_err & QUP_ERROR_OUTPUT_UNDER_RUN)
   dev_warn(controller->dev, "OUTPUT_UNDER_RUN\n");
  if (qup_err & QUP_ERROR_INPUT_OVER_RUN)
   dev_warn(controller->dev, "INPUT_OVER_RUN\n");

  error = -EIO;
 }

 if (spi_err) {
  if (spi_err & SPI_ERROR_CLK_OVER_RUN)
   dev_warn(controller->dev, "CLK_OVER_RUN\n");
  if (spi_err & SPI_ERROR_CLK_UNDER_RUN)
   dev_warn(controller->dev, "CLK_UNDER_RUN\n");

  error = -EIO;
 }

 spin_lock_irqsave(&controller->lock, flags);
 if (!controller->error)
  controller->error = error;
 spin_unlock_irqrestore(&controller->lock, flags);

 if (spi_qup_is_dma_xfer(controller->mode)) {
  writel_relaxed(opflags, controller->base + QUP_OPERATIONAL);
 } else {
  if (opflags & QUP_OP_IN_SERVICE_FLAG)
   spi_qup_read(controller, &opflags);

  if (opflags & QUP_OP_OUT_SERVICE_FLAG)
   spi_qup_write(controller);

  if (!spi_qup_data_pending(controller))
   complete(&controller->done);
 }

 if (error)
  complete(&controller->done);

 if (opflags & QUP_OP_MAX_INPUT_DONE_FLAG) {
  if (!spi_qup_is_dma_xfer(controller->mode)) {
   if (spi_qup_data_pending(controller))
    return IRQ_HANDLED;
  }
  complete(&controller->done);
 }

 return IRQ_HANDLED;
}
