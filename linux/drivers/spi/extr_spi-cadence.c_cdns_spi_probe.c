
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_12__ {int of_node; } ;
struct spi_master {int use_gpio_descriptors; int auto_runtime_pm; int mode_bits; int max_speed_hz; int bits_per_word_mask; int set_cs; int unprepare_transfer_hardware; int transfer_one; int prepare_message; int prepare_transfer_hardware; scalar_t__ num_chipselect; TYPE_1__ dev; } ;
struct TYPE_13__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct cdns_spi {int speed_hz; void* pclk; void* ref_clk; scalar_t__ is_decoded_cs; void* regs; } ;


 scalar_t__ CDNS_SPI_DEFAULT_NUM_CS ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SPI_AUTOSUSPEND_TIMEOUT ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int cdns_prepare_message ;
 int cdns_prepare_transfer_hardware ;
 int cdns_spi_chipselect ;
 int cdns_spi_init_hw (struct cdns_spi*) ;
 int cdns_spi_irq ;
 int cdns_transfer_one ;
 int cdns_unprepare_transfer_hardware ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (TYPE_2__*,char*) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (TYPE_2__*,int,int ,int ,int ,struct spi_master*) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_set_suspended (TYPE_2__*) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 struct spi_master* spi_alloc_master (TYPE_2__*,int) ;
 struct cdns_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_register_master (struct spi_master*) ;

__attribute__((used)) static int cdns_spi_probe(struct platform_device *pdev)
{
 int ret = 0, irq;
 struct spi_master *master;
 struct cdns_spi *xspi;
 u32 num_cs;

 master = spi_alloc_master(&pdev->dev, sizeof(*xspi));
 if (!master)
  return -ENOMEM;

 xspi = spi_master_get_devdata(master);
 master->dev.of_node = pdev->dev.of_node;
 platform_set_drvdata(pdev, master);

 xspi->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(xspi->regs)) {
  ret = PTR_ERR(xspi->regs);
  goto remove_master;
 }

 xspi->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(xspi->pclk)) {
  dev_err(&pdev->dev, "pclk clock not found.\n");
  ret = PTR_ERR(xspi->pclk);
  goto remove_master;
 }

 xspi->ref_clk = devm_clk_get(&pdev->dev, "ref_clk");
 if (IS_ERR(xspi->ref_clk)) {
  dev_err(&pdev->dev, "ref_clk clock not found.\n");
  ret = PTR_ERR(xspi->ref_clk);
  goto remove_master;
 }

 ret = clk_prepare_enable(xspi->pclk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable APB clock.\n");
  goto remove_master;
 }

 ret = clk_prepare_enable(xspi->ref_clk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable device clock.\n");
  goto clk_dis_apb;
 }

 ret = of_property_read_u32(pdev->dev.of_node, "num-cs", &num_cs);
 if (ret < 0)
  master->num_chipselect = CDNS_SPI_DEFAULT_NUM_CS;
 else
  master->num_chipselect = num_cs;

 ret = of_property_read_u32(pdev->dev.of_node, "is-decoded-cs",
       &xspi->is_decoded_cs);
 if (ret < 0)
  xspi->is_decoded_cs = 0;


 cdns_spi_init_hw(xspi);

 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, SPI_AUTOSUSPEND_TIMEOUT);

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  ret = -ENXIO;
  goto clk_dis_all;
 }

 ret = devm_request_irq(&pdev->dev, irq, cdns_spi_irq,
          0, pdev->name, master);
 if (ret != 0) {
  ret = -ENXIO;
  dev_err(&pdev->dev, "request_irq failed\n");
  goto clk_dis_all;
 }

 master->use_gpio_descriptors = 1;
 master->prepare_transfer_hardware = cdns_prepare_transfer_hardware;
 master->prepare_message = cdns_prepare_message;
 master->transfer_one = cdns_transfer_one;
 master->unprepare_transfer_hardware = cdns_unprepare_transfer_hardware;
 master->set_cs = cdns_spi_chipselect;
 master->auto_runtime_pm = 1;
 master->mode_bits = SPI_CPOL | SPI_CPHA;


 master->max_speed_hz = clk_get_rate(xspi->ref_clk) / 4;
 xspi->speed_hz = master->max_speed_hz;

 master->bits_per_word_mask = SPI_BPW_MASK(8);

 ret = spi_register_master(master);
 if (ret) {
  dev_err(&pdev->dev, "spi_register_master failed\n");
  goto clk_dis_all;
 }

 return ret;

clk_dis_all:
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(xspi->ref_clk);
clk_dis_apb:
 clk_disable_unprepare(xspi->pclk);
remove_master:
 spi_master_put(master);
 return ret;
}
