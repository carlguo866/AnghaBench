
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entry_list; int buf_count; } ;
struct TYPE_4__ {int entry_list; int buf_count; } ;
struct TYPE_6__ {int no_in_queues; TYPE_2__ init_pool; TYPE_1__ in_buf_pool; int in_buf_size; int default_out_queue; int do_prio_queueing; int state; } ;
struct qeth_card {TYPE_3__ qdio; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DEFAULT_QUEUE ;
 int QETH_IN_BUF_COUNT_DEFAULT ;
 int QETH_IN_BUF_COUNT_HSDEFAULT ;
 int QETH_IN_BUF_SIZE_DEFAULT ;
 int QETH_PRIOQ_DEFAULT ;
 int QETH_QDIO_UNINITIALIZED ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void qeth_init_qdio_info(struct qeth_card *card)
{
 QETH_CARD_TEXT(card, 4, "intqdinf");
 atomic_set(&card->qdio.state, QETH_QDIO_UNINITIALIZED);
 card->qdio.do_prio_queueing = QETH_PRIOQ_DEFAULT;
 card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;


 card->qdio.no_in_queues = 1;
 card->qdio.in_buf_size = QETH_IN_BUF_SIZE_DEFAULT;
 if (IS_IQD(card))
  card->qdio.init_pool.buf_count = QETH_IN_BUF_COUNT_HSDEFAULT;
 else
  card->qdio.init_pool.buf_count = QETH_IN_BUF_COUNT_DEFAULT;
 card->qdio.in_buf_pool.buf_count = card->qdio.init_pool.buf_count;
 INIT_LIST_HEAD(&card->qdio.in_buf_pool.entry_list);
 INIT_LIST_HEAD(&card->qdio.init_pool.entry_list);
}
