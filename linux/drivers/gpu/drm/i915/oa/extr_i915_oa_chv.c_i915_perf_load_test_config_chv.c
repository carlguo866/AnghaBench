
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_8__ {int show; TYPE_2__ attr; } ;
struct TYPE_6__ {char* name; TYPE_2__** attrs; } ;
struct TYPE_9__ {int id; TYPE_3__ sysfs_metric_id; TYPE_2__** attrs; TYPE_1__ sysfs_metric; void* flex_regs_len; void* flex_regs; void* b_counter_regs_len; void* b_counter_regs; void* mux_regs_len; void* mux_regs; int uuid; } ;
struct TYPE_10__ {TYPE_4__ test_config; } ;
struct drm_i915_private {TYPE_5__ perf; } ;


 void* ARRAY_SIZE (void*) ;
 void* b_counter_config_test_oa ;
 void* flex_eu_config_test_oa ;
 void* mux_config_test_oa ;
 int show_test_oa_id ;
 int strlcpy (int ,char*,int) ;

void
i915_perf_load_test_config_chv(struct drm_i915_private *dev_priv)
{
 strlcpy(dev_priv->perf.test_config.uuid,
  "4a534b07-cba3-414d-8d60-874830e883aa",
  sizeof(dev_priv->perf.test_config.uuid));
 dev_priv->perf.test_config.id = 1;

 dev_priv->perf.test_config.mux_regs = mux_config_test_oa;
 dev_priv->perf.test_config.mux_regs_len = ARRAY_SIZE(mux_config_test_oa);

 dev_priv->perf.test_config.b_counter_regs = b_counter_config_test_oa;
 dev_priv->perf.test_config.b_counter_regs_len = ARRAY_SIZE(b_counter_config_test_oa);

 dev_priv->perf.test_config.flex_regs = flex_eu_config_test_oa;
 dev_priv->perf.test_config.flex_regs_len = ARRAY_SIZE(flex_eu_config_test_oa);

 dev_priv->perf.test_config.sysfs_metric.name = "4a534b07-cba3-414d-8d60-874830e883aa";
 dev_priv->perf.test_config.sysfs_metric.attrs = dev_priv->perf.test_config.attrs;

 dev_priv->perf.test_config.attrs[0] = &dev_priv->perf.test_config.sysfs_metric_id.attr;

 dev_priv->perf.test_config.sysfs_metric_id.attr.name = "id";
 dev_priv->perf.test_config.sysfs_metric_id.attr.mode = 0444;
 dev_priv->perf.test_config.sysfs_metric_id.show = show_test_oa_id;
}
