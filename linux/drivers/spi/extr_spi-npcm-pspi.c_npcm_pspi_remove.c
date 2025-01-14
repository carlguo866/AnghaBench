
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct platform_device {int dummy; } ;
struct npcm_pspi {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int npcm_pspi_reset_hw (struct npcm_pspi*) ;
 struct spi_master* platform_get_drvdata (struct platform_device*) ;
 struct npcm_pspi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int npcm_pspi_remove(struct platform_device *pdev)
{
 struct spi_master *master = platform_get_drvdata(pdev);
 struct npcm_pspi *priv = spi_master_get_devdata(master);

 npcm_pspi_reset_hw(priv);
 clk_disable_unprepare(priv->clk);

 return 0;
}
