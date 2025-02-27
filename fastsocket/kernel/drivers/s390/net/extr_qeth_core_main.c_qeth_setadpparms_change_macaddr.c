
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qeth_ipacmd_setadpparms {int dummy; } ;
struct TYPE_6__ {int addr; int addr_size; int cmd; } ;
struct TYPE_7__ {TYPE_1__ change_addr; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_9__ {TYPE_3__ setadapterparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {TYPE_5__* dev; } ;
struct TYPE_10__ {int dev_addr; } ;


 int CHANGE_ADDR_READ_MAC ;
 scalar_t__ IPA_PDU_HEADER_SIZE ;
 int IPA_SETADP_ALTER_MAC_ADDRESS ;
 int OSA_ADDR_LEN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int memcpy (int *,int ,int ) ;
 struct qeth_cmd_buffer* qeth_get_adapter_cmd (struct qeth_card*,int ,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_setadpparms_change_macaddr_cb ;

int qeth_setadpparms_change_macaddr(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;

 QETH_DBF_TEXT(TRACE, 4, "chgmac");

 iob = qeth_get_adapter_cmd(card, IPA_SETADP_ALTER_MAC_ADDRESS,
       sizeof(struct qeth_ipacmd_setadpparms));
 cmd = (struct qeth_ipa_cmd *)(iob->data+IPA_PDU_HEADER_SIZE);
 cmd->data.setadapterparms.data.change_addr.cmd = CHANGE_ADDR_READ_MAC;
 cmd->data.setadapterparms.data.change_addr.addr_size = OSA_ADDR_LEN;
 memcpy(&cmd->data.setadapterparms.data.change_addr.addr,
        card->dev->dev_addr, OSA_ADDR_LEN);
 rc = qeth_send_ipa_cmd(card, iob, qeth_setadpparms_change_macaddr_cb,
          ((void*)0));
 return rc;
}
