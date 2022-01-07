
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buf_count; } ;
struct TYPE_7__ {int no_out_queues; TYPE_4__** out_qs; TYPE_2__ in_buf_pool; TYPE_1__* in_q; } ;
struct qeth_card {TYPE_3__ qdio; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_8__ {int state; int set_pci_flags_count; int used_buffers; scalar_t__ do_pack; scalar_t__ next_buf_to_fill; struct qeth_card* card; int * bufs; int qdio_bufs; } ;
struct TYPE_5__ {int next_buf_to_init; int * bufs; int qdio_bufs; } ;


 int CARD_DDEV (struct qeth_card*) ;
 int QDIO_FLAG_SYNC_INPUT ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_OUT_Q_UNLOCKED ;
 int QETH_QDIO_BUF_EMPTY ;
 int SETUP ;
 int atomic_set (int *,int ) ;
 int do_QDIO (int ,int ,int ,int ,int) ;
 int memset (int ,int ,int) ;
 int qeth_clear_output_buffer (TYPE_4__*,int ,int ) ;
 int qeth_cq_init (struct qeth_card*) ;
 int qeth_init_input_buffer (struct qeth_card*,int *) ;
 int qeth_initialize_working_pool_list (struct qeth_card*) ;

int qeth_init_qdio_queues(struct qeth_card *card)
{
 int i, j;
 int rc;

 QETH_DBF_TEXT(SETUP, 2, "initqdqs");


 memset(card->qdio.in_q->qdio_bufs, 0,
        QDIO_MAX_BUFFERS_PER_Q * sizeof(struct qdio_buffer));
 qeth_initialize_working_pool_list(card);

 for (i = 0; i < card->qdio.in_buf_pool.buf_count - 1; ++i)
  qeth_init_input_buffer(card, &card->qdio.in_q->bufs[i]);
 card->qdio.in_q->next_buf_to_init =
  card->qdio.in_buf_pool.buf_count - 1;
 rc = do_QDIO(CARD_DDEV(card), QDIO_FLAG_SYNC_INPUT, 0, 0,
       card->qdio.in_buf_pool.buf_count - 1);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", rc);
  return rc;
 }


 rc = qeth_cq_init(card);
 if (rc) {
  return rc;
 }


 for (i = 0; i < card->qdio.no_out_queues; ++i) {
  memset(card->qdio.out_qs[i]->qdio_bufs, 0,
         QDIO_MAX_BUFFERS_PER_Q * sizeof(struct qdio_buffer));
  for (j = 0; j < QDIO_MAX_BUFFERS_PER_Q; ++j) {
   qeth_clear_output_buffer(card->qdio.out_qs[i],
     card->qdio.out_qs[i]->bufs[j],
     QETH_QDIO_BUF_EMPTY);
  }
  card->qdio.out_qs[i]->card = card;
  card->qdio.out_qs[i]->next_buf_to_fill = 0;
  card->qdio.out_qs[i]->do_pack = 0;
  atomic_set(&card->qdio.out_qs[i]->used_buffers, 0);
  atomic_set(&card->qdio.out_qs[i]->set_pci_flags_count, 0);
  atomic_set(&card->qdio.out_qs[i]->state,
      QETH_OUT_Q_UNLOCKED);
 }
 return 0;
}
