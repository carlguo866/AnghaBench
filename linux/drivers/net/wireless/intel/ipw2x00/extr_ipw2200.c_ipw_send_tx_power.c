
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tx_power {int dummy; } ;
struct ipw_priv {int dummy; } ;


 int IPW_CMD_TX_POWER ;
 int IPW_ERROR (char*) ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,struct ipw_tx_power*) ;

__attribute__((used)) static int ipw_send_tx_power(struct ipw_priv *priv, struct ipw_tx_power *power)
{
 if (!priv || !power) {
  IPW_ERROR("Invalid args\n");
  return -1;
 }

 return ipw_send_cmd_pdu(priv, IPW_CMD_TX_POWER, sizeof(*power), power);
}
