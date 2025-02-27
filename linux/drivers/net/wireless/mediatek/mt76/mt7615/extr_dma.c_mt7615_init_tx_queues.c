
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_sw_queue {struct mt76_queue* q; int swq; } ;
struct mt76_queue {int dummy; } ;
struct TYPE_2__ {struct mt76_sw_queue* q_tx; int dev; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MT_TXQ_MCU ;
 int MT_TX_RING_BASE ;
 struct mt76_queue* devm_kzalloc (int ,int,int ) ;
 int mt76_queue_alloc (struct mt7615_dev*,struct mt76_queue*,int ,int,int ,int ) ;

__attribute__((used)) static int
mt7615_init_tx_queues(struct mt7615_dev *dev, int n_desc)
{
 struct mt76_sw_queue *q;
 struct mt76_queue *hwq;
 int err, i;

 hwq = devm_kzalloc(dev->mt76.dev, sizeof(*hwq), GFP_KERNEL);
 if (!hwq)
  return -ENOMEM;

 err = mt76_queue_alloc(dev, hwq, 0, n_desc, 0, MT_TX_RING_BASE);
 if (err < 0)
  return err;

 for (i = 0; i < MT_TXQ_MCU; i++) {
  q = &dev->mt76.q_tx[i];
  INIT_LIST_HEAD(&q->swq);
  q->q = hwq;
 }

 return 0;
}
