
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msm_display_topology {int num_intf; } ;
struct dpu_rm_hw_iter {struct dpu_rm_hw_blk* blk; } ;
struct dpu_rm_hw_blk {int id; int enc_id; int hw; } ;
struct dpu_rm {int dummy; } ;
struct dpu_hw_ctl {TYPE_1__* caps; } ;
typedef int ctls ;
struct TYPE_2__ {unsigned long features; } ;


 int ARRAY_SIZE (struct dpu_rm_hw_blk**) ;
 unsigned long BIT (int ) ;
 int DPU_CTL_SPLIT_DISPLAY ;
 int DPU_DEBUG (char*,int ,...) ;
 int DPU_HW_BLK_CTL ;
 int ENAVAIL ;
 int MAX_BLOCKS ;
 scalar_t__ RESERVED_BY_OTHER (struct dpu_rm_hw_blk*,int ) ;
 scalar_t__ _dpu_rm_get_hw_locked (struct dpu_rm*,struct dpu_rm_hw_iter*) ;
 int _dpu_rm_needs_split_display (struct msm_display_topology const*) ;
 int dpu_rm_init_hw_iter (struct dpu_rm_hw_iter*,int ,int ) ;
 int memset (struct dpu_rm_hw_blk***,int ,int) ;
 struct dpu_hw_ctl* to_dpu_hw_ctl (int ) ;
 int trace_dpu_rm_reserve_ctls (int ,int ) ;

__attribute__((used)) static int _dpu_rm_reserve_ctls(
  struct dpu_rm *rm,
  uint32_t enc_id,
  const struct msm_display_topology *top)
{
 struct dpu_rm_hw_blk *ctls[MAX_BLOCKS];
 struct dpu_rm_hw_iter iter;
 int i = 0, num_ctls = 0;
 bool needs_split_display = 0;

 memset(&ctls, 0, sizeof(ctls));


 num_ctls = top->num_intf;

 needs_split_display = _dpu_rm_needs_split_display(top);

 dpu_rm_init_hw_iter(&iter, 0, DPU_HW_BLK_CTL);
 while (_dpu_rm_get_hw_locked(rm, &iter)) {
  const struct dpu_hw_ctl *ctl = to_dpu_hw_ctl(iter.blk->hw);
  unsigned long features = ctl->caps->features;
  bool has_split_display;

  if (RESERVED_BY_OTHER(iter.blk, enc_id))
   continue;

  has_split_display = BIT(DPU_CTL_SPLIT_DISPLAY) & features;

  DPU_DEBUG("ctl %d caps 0x%lX\n", iter.blk->id, features);

  if (needs_split_display != has_split_display)
   continue;

  ctls[i] = iter.blk;
  DPU_DEBUG("ctl %d match\n", iter.blk->id);

  if (++i == num_ctls)
   break;
 }

 if (i != num_ctls)
  return -ENAVAIL;

 for (i = 0; i < ARRAY_SIZE(ctls) && i < num_ctls; i++) {
  ctls[i]->enc_id = enc_id;
  trace_dpu_rm_reserve_ctls(ctls[i]->id, enc_id);
 }

 return 0;
}
