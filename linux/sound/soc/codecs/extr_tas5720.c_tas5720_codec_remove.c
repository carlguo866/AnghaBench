
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas5720_data {int supplies; int fault_check_work; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int ,char*,int) ;
 int regulator_bulk_disable (int ,int ) ;
 struct tas5720_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void tas5720_codec_remove(struct snd_soc_component *component)
{
 struct tas5720_data *tas5720 = snd_soc_component_get_drvdata(component);
 int ret;

 cancel_delayed_work_sync(&tas5720->fault_check_work);

 ret = regulator_bulk_disable(ARRAY_SIZE(tas5720->supplies),
         tas5720->supplies);
 if (ret < 0)
  dev_err(component->dev, "failed to disable supplies: %d\n", ret);
}
