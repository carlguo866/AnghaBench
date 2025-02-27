
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_error_cfg {int set_frame_annotation; int error_action; int errors; } ;
struct dpni_cmd_set_errors_behavior {int flags; int errors; } ;


 int DPNI_CMDID_SET_ERRORS_BEHAVIOR ;
 int ERROR_ACTION ;
 int FRAME_ANN ;
 int cpu_to_le32 (int ) ;
 int dpni_set_field (int ,int ,int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_errors_behavior(struct fsl_mc_io *mc_io,
        u32 cmd_flags,
        u16 token,
        struct dpni_error_cfg *cfg)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_errors_behavior *cmd_params;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_ERRORS_BEHAVIOR,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_errors_behavior *)cmd.params;
 cmd_params->errors = cpu_to_le32(cfg->errors);
 dpni_set_field(cmd_params->flags, ERROR_ACTION, cfg->error_action);
 dpni_set_field(cmd_params->flags, FRAME_ANN, cfg->set_frame_annotation);


 return mc_send_command(mc_io, &cmd);
}
