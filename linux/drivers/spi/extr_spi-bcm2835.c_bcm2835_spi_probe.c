
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int of_node; } ;
struct spi_controller {int use_gpio_descriptors; TYPE_1__ dev; int prepare_message; int handle_err; int transfer_one; int setup; int num_chipselect; int bits_per_word_mask; int mode_bits; } ;
struct TYPE_10__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct bcm2835_spi {int irq; int clk; int regs; } ;


 int ALIGN (int,int ) ;
 int BCM2835_SPI_CS ;
 int BCM2835_SPI_CS_CLEAR_RX ;
 int BCM2835_SPI_CS_CLEAR_TX ;
 int BCM2835_SPI_MODE_BITS ;
 int BCM2835_SPI_NUM_CS ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_BPW_MASK (int) ;
 int bcm2835_debugfs_create (struct bcm2835_spi*,int ) ;
 int bcm2835_dma_init (struct spi_controller*,TYPE_2__*,struct bcm2835_spi*) ;
 int bcm2835_spi_handle_err ;
 int bcm2835_spi_interrupt ;
 int bcm2835_spi_prepare_message ;
 int bcm2835_spi_setup ;
 int bcm2835_spi_transfer_one ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int dev_name (TYPE_2__*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_controller*) ;
 int devm_spi_register_controller (TYPE_2__*,struct spi_controller*) ;
 int dma_get_cache_alignment () ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_controller*) ;
 struct spi_controller* spi_alloc_master (TYPE_2__*,int ) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;

__attribute__((used)) static int bcm2835_spi_probe(struct platform_device *pdev)
{
 struct spi_controller *ctlr;
 struct bcm2835_spi *bs;
 int err;

 ctlr = spi_alloc_master(&pdev->dev, ALIGN(sizeof(*bs),
        dma_get_cache_alignment()));
 if (!ctlr)
  return -ENOMEM;

 platform_set_drvdata(pdev, ctlr);

 ctlr->use_gpio_descriptors = 1;
 ctlr->mode_bits = BCM2835_SPI_MODE_BITS;
 ctlr->bits_per_word_mask = SPI_BPW_MASK(8);
 ctlr->num_chipselect = BCM2835_SPI_NUM_CS;
 ctlr->setup = bcm2835_spi_setup;
 ctlr->transfer_one = bcm2835_spi_transfer_one;
 ctlr->handle_err = bcm2835_spi_handle_err;
 ctlr->prepare_message = bcm2835_spi_prepare_message;
 ctlr->dev.of_node = pdev->dev.of_node;

 bs = spi_controller_get_devdata(ctlr);

 bs->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(bs->regs)) {
  err = PTR_ERR(bs->regs);
  goto out_controller_put;
 }

 bs->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(bs->clk)) {
  err = PTR_ERR(bs->clk);
  dev_err(&pdev->dev, "could not get clk: %d\n", err);
  goto out_controller_put;
 }

 bs->irq = platform_get_irq(pdev, 0);
 if (bs->irq <= 0) {
  err = bs->irq ? bs->irq : -ENODEV;
  goto out_controller_put;
 }

 clk_prepare_enable(bs->clk);

 bcm2835_dma_init(ctlr, &pdev->dev, bs);


 bcm2835_wr(bs, BCM2835_SPI_CS,
     BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);

 err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
          dev_name(&pdev->dev), ctlr);
 if (err) {
  dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
  goto out_clk_disable;
 }

 err = devm_spi_register_controller(&pdev->dev, ctlr);
 if (err) {
  dev_err(&pdev->dev, "could not register SPI controller: %d\n",
   err);
  goto out_clk_disable;
 }

 bcm2835_debugfs_create(bs, dev_name(&pdev->dev));

 return 0;

out_clk_disable:
 clk_disable_unprepare(bs->clk);
out_controller_put:
 spi_controller_put(ctlr);
 return err;
}
