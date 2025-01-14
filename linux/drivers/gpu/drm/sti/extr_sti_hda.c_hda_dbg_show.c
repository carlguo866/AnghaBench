
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_hda {scalar_t__ video_dacs_ctrl; scalar_t__ regs; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int DBGFS_DUMP (scalar_t__) ;
 scalar_t__ HDA_ANA_ANC_CTRL ;
 scalar_t__ HDA_ANA_CFG ;
 scalar_t__ HDA_ANA_SCALE_CTRL_CB ;
 scalar_t__ HDA_ANA_SCALE_CTRL_CR ;
 scalar_t__ HDA_ANA_SCALE_CTRL_Y ;
 scalar_t__ HDA_ANA_SRC_C_CFG ;
 scalar_t__ HDA_ANA_SRC_Y_CFG ;
 scalar_t__ HDA_SYNC_AWGI ;
 int hda_dbg_awg_microcode (struct seq_file*,scalar_t__) ;
 int hda_dbg_cfg (struct seq_file*,int ) ;
 int hda_dbg_video_dacs_ctrl (struct seq_file*,scalar_t__) ;
 int readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int hda_dbg_show(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct sti_hda *hda = (struct sti_hda *)node->info_ent->data;

 seq_printf(s, "HD Analog: (vaddr = 0x%p)", hda->regs);
 DBGFS_DUMP(HDA_ANA_CFG);
 hda_dbg_cfg(s, readl(hda->regs + HDA_ANA_CFG));
 DBGFS_DUMP(HDA_ANA_SCALE_CTRL_Y);
 DBGFS_DUMP(HDA_ANA_SCALE_CTRL_CB);
 DBGFS_DUMP(HDA_ANA_SCALE_CTRL_CR);
 DBGFS_DUMP(HDA_ANA_ANC_CTRL);
 DBGFS_DUMP(HDA_ANA_SRC_Y_CFG);
 DBGFS_DUMP(HDA_ANA_SRC_C_CFG);
 hda_dbg_awg_microcode(s, hda->regs + HDA_SYNC_AWGI);
 if (hda->video_dacs_ctrl)
  hda_dbg_video_dacs_ctrl(s, hda->video_dacs_ctrl);
 seq_putc(s, '\n');
 return 0;
}
