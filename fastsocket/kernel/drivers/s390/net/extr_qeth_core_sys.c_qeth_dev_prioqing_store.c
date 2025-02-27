
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_out_queues; int default_out_queue; void* do_prio_queueing; } ;
struct qeth_card {scalar_t__ state; int conf_mutex; TYPE_1__ qdio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ CARD_STATE_DOWN ;
 scalar_t__ CARD_STATE_RECOVER ;
 int EINVAL ;
 int EPERM ;
 int QETH_DEFAULT_QUEUE ;
 void* QETH_NO_PRIO_QUEUEING ;
 void* QETH_PRIOQ_DEFAULT ;
 void* QETH_PRIO_Q_ING_PREC ;
 void* QETH_PRIO_Q_ING_TOS ;
 struct qeth_card* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static ssize_t qeth_dev_prioqing_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct qeth_card *card = dev_get_drvdata(dev);
 char *tmp;
 int rc = 0;

 if (!card)
  return -EINVAL;

 mutex_lock(&card->conf_mutex);
 if ((card->state != CARD_STATE_DOWN) &&
     (card->state != CARD_STATE_RECOVER)) {
  rc = -EPERM;
  goto out;
 }




 if (card->qdio.no_out_queues == 1) {
  card->qdio.do_prio_queueing = QETH_PRIOQ_DEFAULT;
  rc = -EPERM;
  goto out;
 }

 tmp = strsep((char **) &buf, "\n");
 if (!strcmp(tmp, "prio_queueing_prec"))
  card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_PREC;
 else if (!strcmp(tmp, "prio_queueing_tos"))
  card->qdio.do_prio_queueing = QETH_PRIO_Q_ING_TOS;
 else if (!strcmp(tmp, "no_prio_queueing:0")) {
  card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
  card->qdio.default_out_queue = 0;
 } else if (!strcmp(tmp, "no_prio_queueing:1")) {
  card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
  card->qdio.default_out_queue = 1;
 } else if (!strcmp(tmp, "no_prio_queueing:2")) {
  card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
  card->qdio.default_out_queue = 2;
 } else if (!strcmp(tmp, "no_prio_queueing:3")) {
  card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
  card->qdio.default_out_queue = 3;
 } else if (!strcmp(tmp, "no_prio_queueing")) {
  card->qdio.do_prio_queueing = QETH_NO_PRIO_QUEUEING;
  card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
 } else
  rc = -EINVAL;
out:
 mutex_unlock(&card->conf_mutex);
 return rc ? rc : count;
}
