
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpsw_cmd_set_irq_enable {int irq_index; int enable_state; } ;


 int DPSW_CMDID_SET_IRQ_ENABLE ;
 int ENABLE ;
 int dpsw_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpsw_set_irq_enable(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   u8 irq_index,
   u8 en)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpsw_cmd_set_irq_enable *cmd_params;


 cmd.header = mc_encode_cmd_header(DPSW_CMDID_SET_IRQ_ENABLE,
       cmd_flags,
       token);
 cmd_params = (struct dpsw_cmd_set_irq_enable *)cmd.params;
 dpsw_set_field(cmd_params->enable_state, ENABLE, en);
 cmd_params->irq_index = irq_index;


 return mc_send_command(mc_io, &cmd);
}
