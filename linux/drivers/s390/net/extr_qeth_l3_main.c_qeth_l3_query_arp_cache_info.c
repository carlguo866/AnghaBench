
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int request_bits; } ;
struct TYPE_6__ {TYPE_1__ query_arp; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ setassparms; } ;
struct qeth_ipa_cmd {TYPE_4__ data; } ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
struct qeth_arp_query_info {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int CARD_DEVID (struct qeth_card*) ;
 int ENOMEM ;
 int IPA_ARP_PROCESSING ;
 int IPA_CMD_ASS_ARP_QUERY_INFO ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int SETASS_DATA_SIZEOF (int ) ;
 struct qeth_ipa_cmd* __ipa_cmd (struct qeth_cmd_buffer*) ;
 struct qeth_cmd_buffer* qeth_get_setassparms_cmd (struct qeth_card*,int ,int ,int ,int) ;
 int qeth_l3_arp_query_cb ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,struct qeth_arp_query_info*) ;
 int query_arp ;

__attribute__((used)) static int qeth_l3_query_arp_cache_info(struct qeth_card *card,
 enum qeth_prot_versions prot,
 struct qeth_arp_query_info *qinfo)
{
 struct qeth_cmd_buffer *iob;
 struct qeth_ipa_cmd *cmd;
 int rc;

 QETH_CARD_TEXT_(card, 3, "qarpipv%i", prot);

 iob = qeth_get_setassparms_cmd(card, IPA_ARP_PROCESSING,
           IPA_CMD_ASS_ARP_QUERY_INFO,
           SETASS_DATA_SIZEOF(query_arp), prot);
 if (!iob)
  return -ENOMEM;
 cmd = __ipa_cmd(iob);
 cmd->data.setassparms.data.query_arp.request_bits = 0x000F;
 rc = qeth_send_ipa_cmd(card, iob, qeth_l3_arp_query_cb, qinfo);
 if (rc)
  QETH_DBF_MESSAGE(2, "Error while querying ARP cache on device %x: %#x\n",
     CARD_DEVID(card), rc);
 return rc;
}
