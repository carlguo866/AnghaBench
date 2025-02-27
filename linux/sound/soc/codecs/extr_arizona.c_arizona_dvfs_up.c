
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct arizona_priv {unsigned int dvfs_reqs; int dvfs_lock; int dvfs_cached; } ;


 int arizona_dvfs_enable (struct snd_soc_component*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int arizona_dvfs_up(struct snd_soc_component *component, unsigned int flags)
{
 struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 int ret = 0;

 mutex_lock(&priv->dvfs_lock);

 if (!priv->dvfs_cached && !priv->dvfs_reqs) {
  ret = arizona_dvfs_enable(component);
  if (ret)
   goto err;
 }

 priv->dvfs_reqs |= flags;
err:
 mutex_unlock(&priv->dvfs_lock);
 return ret;
}
