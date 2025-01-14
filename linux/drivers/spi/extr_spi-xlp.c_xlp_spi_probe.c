
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct xlp_spi_priv {int done; int spi_clk; struct clk* base; } ;
struct TYPE_8__ {int of_node; } ;
struct spi_master {int mode_bits; TYPE_1__ dev; int transfer_one; int setup; int num_chipselect; scalar_t__ bus_num; } ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int XLP_SPI_MAX_CS ;
 int clk_get_rate (struct clk*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct clk* devm_clk_get (TYPE_2__*,int *) ;
 struct xlp_spi_priv* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct clk* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct xlp_spi_priv*) ;
 int devm_spi_register_master (TYPE_2__*,struct spi_master*) ;
 int init_completion (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int ) ;
 int spi_master_put (struct spi_master*) ;
 int spi_master_set_devdata (struct spi_master*,struct xlp_spi_priv*) ;
 int xlp_spi_interrupt ;
 int xlp_spi_setup ;
 int xlp_spi_sysctl_setup (struct xlp_spi_priv*) ;
 int xlp_spi_transfer_one ;

__attribute__((used)) static int xlp_spi_probe(struct platform_device *pdev)
{
 struct spi_master *master;
 struct xlp_spi_priv *xspi;
 struct clk *clk;
 int irq, err;

 xspi = devm_kzalloc(&pdev->dev, sizeof(*xspi), GFP_KERNEL);
 if (!xspi)
  return -ENOMEM;

 xspi->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(xspi->base))
  return PTR_ERR(xspi->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 err = devm_request_irq(&pdev->dev, irq, xlp_spi_interrupt, 0,
   pdev->name, xspi);
 if (err) {
  dev_err(&pdev->dev, "unable to request irq %d\n", irq);
  return err;
 }

 clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "could not get spi clock\n");
  return PTR_ERR(clk);
 }

 xspi->spi_clk = clk_get_rate(clk);

 master = spi_alloc_master(&pdev->dev, 0);
 if (!master) {
  dev_err(&pdev->dev, "could not alloc master\n");
  return -ENOMEM;
 }

 master->bus_num = 0;
 master->num_chipselect = XLP_SPI_MAX_CS;
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH;
 master->setup = xlp_spi_setup;
 master->transfer_one = xlp_spi_transfer_one;
 master->dev.of_node = pdev->dev.of_node;

 init_completion(&xspi->done);
 spi_master_set_devdata(master, xspi);
 xlp_spi_sysctl_setup(xspi);


 err = devm_spi_register_master(&pdev->dev, master);
 if (err) {
  dev_err(&pdev->dev, "spi register master failed!\n");
  spi_master_put(master);
  return err;
 }

 return 0;
}
