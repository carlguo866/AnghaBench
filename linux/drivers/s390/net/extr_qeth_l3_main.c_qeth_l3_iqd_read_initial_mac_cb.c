
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_7__ {int unique_id; } ;
struct TYPE_8__ {TYPE_3__ create_destroy_addr; } ;
struct TYPE_5__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_4__ data; TYPE_1__ hdr; } ;
struct qeth_card {TYPE_2__* dev; } ;
struct TYPE_6__ {int dev_addr; } ;


 int EIO ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static int qeth_l3_iqd_read_initial_mac_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd = (struct qeth_ipa_cmd *) data;

 if (cmd->hdr.return_code)
  return -EIO;

 ether_addr_copy(card->dev->dev_addr,
   cmd->data.create_destroy_addr.unique_id);
 return 0;
}
