
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct device {int dummy; } ;
struct ak4613_priv {scalar_t__ cnt; int lock; int * iface; } ;


 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ak4613_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void ak4613_dai_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct ak4613_priv *priv = snd_soc_component_get_drvdata(component);
 struct device *dev = component->dev;

 mutex_lock(&priv->lock);
 priv->cnt--;
 if (priv->cnt < 0) {
  dev_err(dev, "unexpected counter error\n");
  priv->cnt = 0;
 }
 if (!priv->cnt)
  priv->iface = ((void*)0);
 mutex_unlock(&priv->lock);
}
