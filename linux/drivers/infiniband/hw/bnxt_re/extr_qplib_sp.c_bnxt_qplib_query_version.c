
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct creq_query_version_resp {char fw_maj; char fw_minor; char fw_bld; char fw_rsvd; } ;
struct cmdq_query_version {int dummy; } ;
struct bnxt_qplib_rcfw {int dummy; } ;


 int QUERY_VERSION ;
 int RCFW_CMD_PREP (struct cmdq_query_version,int ,int ) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int ) ;

__attribute__((used)) static void bnxt_qplib_query_version(struct bnxt_qplib_rcfw *rcfw,
         char *fw_ver)
{
 struct cmdq_query_version req;
 struct creq_query_version_resp resp;
 u16 cmd_flags = 0;
 int rc = 0;

 RCFW_CMD_PREP(req, QUERY_VERSION, cmd_flags);

 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req,
       (void *)&resp, ((void*)0), 0);
 if (rc)
  return;
 fw_ver[0] = resp.fw_maj;
 fw_ver[1] = resp.fw_minor;
 fw_ver[2] = resp.fw_bld;
 fw_ver[3] = resp.fw_rsvd;
}
