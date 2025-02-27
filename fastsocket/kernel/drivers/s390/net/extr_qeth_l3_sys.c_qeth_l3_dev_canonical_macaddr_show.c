
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ macaddr_mode; } ;
struct TYPE_3__ {scalar_t__ link_type; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ QETH_LINK_TYPE_HSTR ;
 scalar_t__ QETH_LINK_TYPE_LANE_TR ;
 scalar_t__ QETH_TR_MACADDR_CANONICAL ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t qeth_l3_dev_canonical_macaddr_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct qeth_card *card = dev_get_drvdata(dev);

 if (!card)
  return -EINVAL;

 if (!((card->info.link_type == QETH_LINK_TYPE_HSTR) ||
       (card->info.link_type == QETH_LINK_TYPE_LANE_TR)))
  return sprintf(buf, "n/a\n");

 return sprintf(buf, "%i\n", (card->options.macaddr_mode ==
         QETH_TR_MACADDR_CANONICAL)? 1:0);
}
