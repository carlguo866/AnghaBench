
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;
struct iwl_bt_uart_msg {int frame1; int frame2; int frame3; int frame4; int frame5; int frame6; int frame7; } ;


 int BT_UART_MSG_FRAME1MSGTYPE_MSK ;
 int BT_UART_MSG_FRAME1MSGTYPE_POS ;
 int BT_UART_MSG_FRAME1SSN_MSK ;
 int BT_UART_MSG_FRAME1SSN_POS ;
 int BT_UART_MSG_FRAME1UPDATEREQ_MSK ;
 int BT_UART_MSG_FRAME1UPDATEREQ_POS ;
 int BT_UART_MSG_FRAME2CHLSEQN_MSK ;
 int BT_UART_MSG_FRAME2CHLSEQN_POS ;
 int BT_UART_MSG_FRAME2INBAND_MSK ;
 int BT_UART_MSG_FRAME2INBAND_POS ;
 int BT_UART_MSG_FRAME2OPENCONNECTIONS_MSK ;
 int BT_UART_MSG_FRAME2OPENCONNECTIONS_POS ;
 int BT_UART_MSG_FRAME2TRAFFICLOAD_MSK ;
 int BT_UART_MSG_FRAME2TRAFFICLOAD_POS ;
 int BT_UART_MSG_FRAME3A2DP_MSK ;
 int BT_UART_MSG_FRAME3A2DP_POS ;
 int BT_UART_MSG_FRAME3ACL_MSK ;
 int BT_UART_MSG_FRAME3ACL_POS ;
 int BT_UART_MSG_FRAME3MASTER_MSK ;
 int BT_UART_MSG_FRAME3MASTER_POS ;
 int BT_UART_MSG_FRAME3OBEX_MSK ;
 int BT_UART_MSG_FRAME3OBEX_POS ;
 int BT_UART_MSG_FRAME3SCOESCO_MSK ;
 int BT_UART_MSG_FRAME3SCOESCO_POS ;
 int BT_UART_MSG_FRAME3SNIFF_MSK ;
 int BT_UART_MSG_FRAME3SNIFF_POS ;
 int BT_UART_MSG_FRAME4IDLEDURATION_MSK ;
 int BT_UART_MSG_FRAME4IDLEDURATION_POS ;
 int BT_UART_MSG_FRAME5ESCORETRANSMIT_MSK ;
 int BT_UART_MSG_FRAME5ESCORETRANSMIT_POS ;
 int BT_UART_MSG_FRAME5RXACTIVITY_MSK ;
 int BT_UART_MSG_FRAME5RXACTIVITY_POS ;
 int BT_UART_MSG_FRAME5TXACTIVITY_MSK ;
 int BT_UART_MSG_FRAME5TXACTIVITY_POS ;
 int BT_UART_MSG_FRAME6DISCOVERABLE_MSK ;
 int BT_UART_MSG_FRAME6DISCOVERABLE_POS ;
 int BT_UART_MSG_FRAME6SNIFFINTERVAL_MSK ;
 int BT_UART_MSG_FRAME6SNIFFINTERVAL_POS ;
 int BT_UART_MSG_FRAME7CONNECTABLE_MSK ;
 int BT_UART_MSG_FRAME7CONNECTABLE_POS ;
 int BT_UART_MSG_FRAME7INQUIRY_MSK ;
 int BT_UART_MSG_FRAME7INQUIRY_POS ;
 int BT_UART_MSG_FRAME7PAGE_MSK ;
 int BT_UART_MSG_FRAME7PAGE_POS ;
 int BT_UART_MSG_FRAME7SNIFFACTIVITY_MSK ;
 int BT_UART_MSG_FRAME7SNIFFACTIVITY_POS ;
 int IWL_DEBUG_COEX (struct iwl_priv*,char*,int,...) ;

__attribute__((used)) static void iwlagn_print_uartmsg(struct iwl_priv *priv,
    struct iwl_bt_uart_msg *uart_msg)
{
 IWL_DEBUG_COEX(priv, "Message Type = 0x%X, SSN = 0x%X, "
   "Update Req = 0x%X\n",
  (BT_UART_MSG_FRAME1MSGTYPE_MSK & uart_msg->frame1) >>
   BT_UART_MSG_FRAME1MSGTYPE_POS,
  (BT_UART_MSG_FRAME1SSN_MSK & uart_msg->frame1) >>
   BT_UART_MSG_FRAME1SSN_POS,
  (BT_UART_MSG_FRAME1UPDATEREQ_MSK & uart_msg->frame1) >>
   BT_UART_MSG_FRAME1UPDATEREQ_POS);

 IWL_DEBUG_COEX(priv, "Open connections = 0x%X, Traffic load = 0x%X, "
   "Chl_SeqN = 0x%X, In band = 0x%X\n",
  (BT_UART_MSG_FRAME2OPENCONNECTIONS_MSK & uart_msg->frame2) >>
   BT_UART_MSG_FRAME2OPENCONNECTIONS_POS,
  (BT_UART_MSG_FRAME2TRAFFICLOAD_MSK & uart_msg->frame2) >>
   BT_UART_MSG_FRAME2TRAFFICLOAD_POS,
  (BT_UART_MSG_FRAME2CHLSEQN_MSK & uart_msg->frame2) >>
   BT_UART_MSG_FRAME2CHLSEQN_POS,
  (BT_UART_MSG_FRAME2INBAND_MSK & uart_msg->frame2) >>
   BT_UART_MSG_FRAME2INBAND_POS);

 IWL_DEBUG_COEX(priv, "SCO/eSCO = 0x%X, Sniff = 0x%X, A2DP = 0x%X, "
   "ACL = 0x%X, Master = 0x%X, OBEX = 0x%X\n",
  (BT_UART_MSG_FRAME3SCOESCO_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3SCOESCO_POS,
  (BT_UART_MSG_FRAME3SNIFF_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3SNIFF_POS,
  (BT_UART_MSG_FRAME3A2DP_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3A2DP_POS,
  (BT_UART_MSG_FRAME3ACL_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3ACL_POS,
  (BT_UART_MSG_FRAME3MASTER_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3MASTER_POS,
  (BT_UART_MSG_FRAME3OBEX_MSK & uart_msg->frame3) >>
   BT_UART_MSG_FRAME3OBEX_POS);

 IWL_DEBUG_COEX(priv, "Idle duration = 0x%X\n",
  (BT_UART_MSG_FRAME4IDLEDURATION_MSK & uart_msg->frame4) >>
   BT_UART_MSG_FRAME4IDLEDURATION_POS);

 IWL_DEBUG_COEX(priv, "Tx Activity = 0x%X, Rx Activity = 0x%X, "
   "eSCO Retransmissions = 0x%X\n",
  (BT_UART_MSG_FRAME5TXACTIVITY_MSK & uart_msg->frame5) >>
   BT_UART_MSG_FRAME5TXACTIVITY_POS,
  (BT_UART_MSG_FRAME5RXACTIVITY_MSK & uart_msg->frame5) >>
   BT_UART_MSG_FRAME5RXACTIVITY_POS,
  (BT_UART_MSG_FRAME5ESCORETRANSMIT_MSK & uart_msg->frame5) >>
   BT_UART_MSG_FRAME5ESCORETRANSMIT_POS);

 IWL_DEBUG_COEX(priv, "Sniff Interval = 0x%X, Discoverable = 0x%X\n",
  (BT_UART_MSG_FRAME6SNIFFINTERVAL_MSK & uart_msg->frame6) >>
   BT_UART_MSG_FRAME6SNIFFINTERVAL_POS,
  (BT_UART_MSG_FRAME6DISCOVERABLE_MSK & uart_msg->frame6) >>
   BT_UART_MSG_FRAME6DISCOVERABLE_POS);

 IWL_DEBUG_COEX(priv, "Sniff Activity = 0x%X, Page = "
   "0x%X, Inquiry = 0x%X, Connectable = 0x%X\n",
  (BT_UART_MSG_FRAME7SNIFFACTIVITY_MSK & uart_msg->frame7) >>
   BT_UART_MSG_FRAME7SNIFFACTIVITY_POS,
  (BT_UART_MSG_FRAME7PAGE_MSK & uart_msg->frame7) >>
   BT_UART_MSG_FRAME7PAGE_POS,
  (BT_UART_MSG_FRAME7INQUIRY_MSK & uart_msg->frame7) >>
   BT_UART_MSG_FRAME7INQUIRY_POS,
  (BT_UART_MSG_FRAME7CONNECTABLE_MSK & uart_msg->frame7) >>
   BT_UART_MSG_FRAME7CONNECTABLE_POS);
}
