
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int dummy; } ;
struct vhost_scsi_cmd {struct se_cmd tvc_se_cmd; } ;


 int transport_generic_free_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static void vhost_scsi_free_cmd(struct vhost_scsi_cmd *cmd)
{
 struct se_cmd *se_cmd = &cmd->tvc_se_cmd;


 transport_generic_free_cmd(se_cmd, 0);

}
