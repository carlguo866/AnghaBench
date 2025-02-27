
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_qspi {scalar_t__ irq; void* pclk; void* refclk; struct device* dev; void* regs; } ;
struct TYPE_2__ {struct TYPE_2__* parent; int of_node; } ;
struct spi_master {int max_speed_hz; int mode_bits; TYPE_1__ dev; int bits_per_word_mask; int unprepare_transfer_hardware; int prepare_transfer_hardware; int transfer_one; int set_cs; int setup; int num_chipselect; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; int name; } ;


 int ENOMEM ;
 int ENXIO ;
 int GQSPI_DEFAULT_NUM_CS ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SPI_AUTOSUSPEND_TIMEOUT ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_RX_DUAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_QUAD ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct spi_master*) ;
 void* eemi_ops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_set_suspended (struct device*) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct zynqmp_qspi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_register_master (struct spi_master*) ;
 void* zynqmp_pm_get_eemi_ops () ;
 int zynqmp_prepare_transfer_hardware ;
 int zynqmp_qspi_chipselect ;
 int zynqmp_qspi_init_hw (struct zynqmp_qspi*) ;
 int zynqmp_qspi_irq ;
 int zynqmp_qspi_setup ;
 int zynqmp_qspi_start_transfer ;
 int zynqmp_unprepare_transfer_hardware ;

__attribute__((used)) static int zynqmp_qspi_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct spi_master *master;
 struct zynqmp_qspi *xqspi;
 struct device *dev = &pdev->dev;

 eemi_ops = zynqmp_pm_get_eemi_ops();
 if (IS_ERR(eemi_ops))
  return PTR_ERR(eemi_ops);

 master = spi_alloc_master(&pdev->dev, sizeof(*xqspi));
 if (!master)
  return -ENOMEM;

 xqspi = spi_master_get_devdata(master);
 master->dev.of_node = pdev->dev.of_node;
 platform_set_drvdata(pdev, master);

 xqspi->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(xqspi->regs)) {
  ret = PTR_ERR(xqspi->regs);
  goto remove_master;
 }

 xqspi->dev = dev;
 xqspi->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(xqspi->pclk)) {
  dev_err(dev, "pclk clock not found.\n");
  ret = PTR_ERR(xqspi->pclk);
  goto remove_master;
 }

 ret = clk_prepare_enable(xqspi->pclk);
 if (ret) {
  dev_err(dev, "Unable to enable APB clock.\n");
  goto remove_master;
 }

 xqspi->refclk = devm_clk_get(&pdev->dev, "ref_clk");
 if (IS_ERR(xqspi->refclk)) {
  dev_err(dev, "ref_clk clock not found.\n");
  ret = PTR_ERR(xqspi->refclk);
  goto clk_dis_pclk;
 }

 ret = clk_prepare_enable(xqspi->refclk);
 if (ret) {
  dev_err(dev, "Unable to enable device clock.\n");
  goto clk_dis_pclk;
 }

 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, SPI_AUTOSUSPEND_TIMEOUT);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 zynqmp_qspi_init_hw(xqspi);

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);
 xqspi->irq = platform_get_irq(pdev, 0);
 if (xqspi->irq <= 0) {
  ret = -ENXIO;
  goto clk_dis_all;
 }
 ret = devm_request_irq(&pdev->dev, xqspi->irq, zynqmp_qspi_irq,
          0, pdev->name, master);
 if (ret != 0) {
  ret = -ENXIO;
  dev_err(dev, "request_irq failed\n");
  goto clk_dis_all;
 }

 master->num_chipselect = GQSPI_DEFAULT_NUM_CS;

 master->setup = zynqmp_qspi_setup;
 master->set_cs = zynqmp_qspi_chipselect;
 master->transfer_one = zynqmp_qspi_start_transfer;
 master->prepare_transfer_hardware = zynqmp_prepare_transfer_hardware;
 master->unprepare_transfer_hardware =
     zynqmp_unprepare_transfer_hardware;
 master->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 master->bits_per_word_mask = SPI_BPW_MASK(8);
 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_RX_DUAL | SPI_RX_QUAD |
       SPI_TX_DUAL | SPI_TX_QUAD;

 if (master->dev.parent == ((void*)0))
  master->dev.parent = &master->dev;

 ret = spi_register_master(master);
 if (ret)
  goto clk_dis_all;

 return 0;

clk_dis_all:
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(xqspi->refclk);
clk_dis_pclk:
 clk_disable_unprepare(xqspi->pclk);
remove_master:
 spi_master_put(master);

 return ret;
}
