
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct fsl_ssi {int dma_params_rx; int dma_params_tx; scalar_t__ use_dma; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ imx; } ;


 struct fsl_ssi* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_init_dma_data (struct snd_soc_dai*,int *,int *) ;

__attribute__((used)) static int fsl_ssi_dai_probe(struct snd_soc_dai *dai)
{
 struct fsl_ssi *ssi = snd_soc_dai_get_drvdata(dai);

 if (ssi->soc->imx && ssi->use_dma)
  snd_soc_dai_init_dma_data(dai, &ssi->dma_params_tx,
       &ssi->dma_params_rx);

 return 0;
}
