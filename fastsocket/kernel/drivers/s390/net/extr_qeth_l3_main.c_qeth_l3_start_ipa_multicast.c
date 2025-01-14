
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {TYPE_1__* dev; TYPE_2__* gdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int flags; } ;


 int EOPNOTSUPP ;
 int IFF_MULTICAST ;
 int IPA_CMD_ASS_START ;
 int IPA_MULTICASTING ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int dev_info (int *,char*,...) ;
 int dev_warn (int *,char*,int ) ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_send_simple_setassparms (struct qeth_card*,int ,int ,int ) ;

__attribute__((used)) static int qeth_l3_start_ipa_multicast(struct qeth_card *card)
{
 int rc;

 QETH_DBF_TEXT(TRACE, 3, "stmcast");

 if (!qeth_is_supported(card, IPA_MULTICASTING)) {
  dev_info(&card->gdev->dev,
   "Multicast not supported on %s\n",
   QETH_CARD_IFNAME(card));
  return -EOPNOTSUPP;
 }

 rc = qeth_l3_send_simple_setassparms(card, IPA_MULTICASTING,
       IPA_CMD_ASS_START, 0);
 if (rc) {
  dev_warn(&card->gdev->dev,
   "Starting multicast support for %s failed\n",
   QETH_CARD_IFNAME(card));
 } else {
  dev_info(&card->gdev->dev, "Multicast enabled\n");
  card->dev->flags |= IFF_MULTICAST;
 }
 return rc;
}
