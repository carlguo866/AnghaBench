
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prev_isolation; int isolation; } ;
struct qeth_card {int conf_mutex; TYPE_2__ options; TYPE_1__* gdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum qeth_ipa_isolation_modes { ____Placeholder_qeth_ipa_isolation_modes } qeth_ipa_isolation_modes ;
struct TYPE_3__ {int dev; } ;


 int ATTR_QETH_ISOLATION_DROP ;
 int ATTR_QETH_ISOLATION_FWD ;
 int ATTR_QETH_ISOLATION_NONE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ISOLATION_MODE_DROP ;
 int ISOLATION_MODE_FWD ;
 int ISOLATION_MODE_NONE ;
 int IS_OSD (struct qeth_card*) ;
 int IS_OSX (struct qeth_card*) ;
 int dev_err (int *,char*) ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_set_access_ctrl_online (struct qeth_card*,int) ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static ssize_t qeth_dev_isolation_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 enum qeth_ipa_isolation_modes isolation;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if (!IS_OSD(card) && !IS_OSX(card)) {
  rc = -EOPNOTSUPP;
  dev_err(&card->gdev->dev, "Adapter does not "
   "support QDIO data connection isolation\n");
  goto out;
 }


 if (sysfs_streq(buf, ATTR_QETH_ISOLATION_NONE)) {
  isolation = ISOLATION_MODE_NONE;
 } else if (sysfs_streq(buf, ATTR_QETH_ISOLATION_FWD)) {
  isolation = ISOLATION_MODE_FWD;
 } else if (sysfs_streq(buf, ATTR_QETH_ISOLATION_DROP)) {
  isolation = ISOLATION_MODE_DROP;
 } else {
  rc = -EINVAL;
  goto out;
 }
 rc = count;


 card->options.prev_isolation = card->options.isolation;
 card->options.isolation = isolation;
 if (qeth_card_hw_is_reachable(card)) {
  int ipa_rc = qeth_set_access_ctrl_online(card, 1);
  if (ipa_rc != 0)
   rc = ipa_rc;
 }
out:
 mutex_unlock(&card->conf_mutex);
 return rc;
}
