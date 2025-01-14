
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {struct skl_module_cfg* priv; } ;
struct skl_module_cfg {TYPE_1__* pipe; } ;
struct skl_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ conn_type; } ;


 scalar_t__ SKL_PIPE_CONN_TYPE_FE ;
 scalar_t__ SKL_PIPE_STARTED ;
 int skl_bind_modules (struct skl_dev*,struct skl_module_cfg*,struct skl_module_cfg*) ;
 struct snd_soc_dapm_widget* skl_get_src_dsp_widget (struct snd_soc_dapm_widget*,struct skl_dev*) ;
 int skl_run_pipe (struct skl_dev*,TYPE_1__*) ;
 int skl_tplg_set_module_bind_params (struct snd_soc_dapm_widget*,struct skl_module_cfg*,struct skl_dev*) ;

__attribute__((used)) static int skl_tplg_mixer_dapm_post_pmu_event(struct snd_soc_dapm_widget *w,
       struct skl_dev *skl)
{
 int ret = 0;
 struct snd_soc_dapm_widget *source, *sink;
 struct skl_module_cfg *src_mconfig, *sink_mconfig;
 int src_pipe_started = 0;

 sink = w;
 sink_mconfig = sink->priv;






 source = skl_get_src_dsp_widget(w, skl);
 if (source != ((void*)0)) {
  src_mconfig = source->priv;
  sink_mconfig = sink->priv;
  src_pipe_started = 1;





  if (src_mconfig->pipe->state != SKL_PIPE_STARTED)
   src_pipe_started = 0;
 }

 if (src_pipe_started) {
  ret = skl_bind_modules(skl, src_mconfig, sink_mconfig);
  if (ret)
   return ret;


  skl_tplg_set_module_bind_params(source, src_mconfig, skl);
  skl_tplg_set_module_bind_params(sink, sink_mconfig, skl);

  if (sink_mconfig->pipe->conn_type != SKL_PIPE_CONN_TYPE_FE)
   ret = skl_run_pipe(skl, sink_mconfig->pipe);
 }

 return ret;
}
