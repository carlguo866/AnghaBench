
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;


 int IPW_CMD_RSN_CAPABILITIES ;
 int IPW_DEBUG_HC (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,char*) ;

__attribute__((used)) static int ipw_set_rsn_capa(struct ipw_priv *priv,
       char *capabilities, int length)
{
 IPW_DEBUG_HC("HOST_CMD_RSN_CAPABILITIES\n");

 return ipw_send_cmd_pdu(priv, IPW_CMD_RSN_CAPABILITIES, length,
    capabilities);
}
