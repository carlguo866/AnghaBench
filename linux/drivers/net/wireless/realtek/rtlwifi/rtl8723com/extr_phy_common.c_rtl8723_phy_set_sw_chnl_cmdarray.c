
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct swchnlcmd {int cmdid; scalar_t__ msdelay; scalar_t__ para2; scalar_t__ para1; } ;
typedef enum swchnlcmd_id { ____Placeholder_swchnlcmd_id } swchnlcmd_id ;


 int WARN_ONCE (int,char*) ;

bool rtl8723_phy_set_sw_chnl_cmdarray(struct swchnlcmd *cmdtable,
          u32 cmdtableidx,
          u32 cmdtablesz,
          enum swchnlcmd_id cmdid,
          u32 para1, u32 para2,
          u32 msdelay)
{
 struct swchnlcmd *pcmd;

 if (cmdtable == ((void*)0)) {
  WARN_ONCE(1, "rtl8723-common: cmdtable cannot be NULL.\n");
  return 0;
 }

 if (cmdtableidx >= cmdtablesz)
  return 0;

 pcmd = cmdtable + cmdtableidx;
 pcmd->cmdid = cmdid;
 pcmd->para1 = para1;
 pcmd->para2 = para2;
 pcmd->msdelay = msdelay;
 return 1;
}
