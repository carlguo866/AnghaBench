
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sti_hqvdp_cmd {int dummy; } ;
struct sti_hqvdp {scalar_t__ hqvdp_cmd_paddr; scalar_t__ regs; } ;


 scalar_t__ HQVDP_MBX_CURRENT_CMD ;
 unsigned int NB_VDP_CMD ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static int sti_hqvdp_get_curr_cmd(struct sti_hqvdp *hqvdp)
{
 u32 curr_cmd;
 u32 cmd = hqvdp->hqvdp_cmd_paddr;
 unsigned int i;

 curr_cmd = readl(hqvdp->regs + HQVDP_MBX_CURRENT_CMD);

 for (i = 0; i < NB_VDP_CMD; i++) {
  if (cmd == curr_cmd)
   return i * sizeof(struct sti_hqvdp_cmd);

  cmd += sizeof(struct sti_hqvdp_cmd);
 }

 return -1;
}
