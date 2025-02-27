
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sja1105_table {struct sja1105_avb_params_entry* entries; scalar_t__ entry_count; TYPE_1__* ops; } ;
struct TYPE_4__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_2__ static_config; } ;
struct sja1105_avb_params_entry {int srcmeta; int destmeta; } ;
struct TYPE_3__ {int unpacked_entry_size; } ;


 size_t BLK_IDX_AVB_PARAMS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SJA1105_MAX_AVB_PARAMS_COUNT ;
 int SJA1105_META_DMAC ;
 int SJA1105_META_SMAC ;
 struct sja1105_avb_params_entry* kcalloc (scalar_t__,int ,int ) ;
 int kfree (struct sja1105_avb_params_entry*) ;

__attribute__((used)) static int sja1105_init_avb_params(struct sja1105_private *priv,
       bool on)
{
 struct sja1105_avb_params_entry *avb;
 struct sja1105_table *table;

 table = &priv->static_config.tables[BLK_IDX_AVB_PARAMS];


 if (table->entry_count) {
  kfree(table->entries);
  table->entry_count = 0;
 }


 if (!on)
  return 0;

 table->entries = kcalloc(SJA1105_MAX_AVB_PARAMS_COUNT,
     table->ops->unpacked_entry_size, GFP_KERNEL);
 if (!table->entries)
  return -ENOMEM;

 table->entry_count = SJA1105_MAX_AVB_PARAMS_COUNT;

 avb = table->entries;

 avb->destmeta = SJA1105_META_DMAC;
 avb->srcmeta = SJA1105_META_SMAC;

 return 0;
}
