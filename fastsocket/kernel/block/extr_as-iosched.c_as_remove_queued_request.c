
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {TYPE_2__* elevator; } ;
struct request {int dummy; } ;
struct io_context {TYPE_1__* aic; } ;
struct as_data {struct request** next_rq; } ;
struct TYPE_4__ {struct as_data* elevator_data; } ;
struct TYPE_3__ {int nr_queued; } ;


 scalar_t__ AS_RQ_QUEUED ;
 int BUG_ON (int) ;
 struct io_context* RQ_IOC (struct request*) ;
 scalar_t__ RQ_STATE (struct request*) ;
 int WARN_ON (int) ;
 int as_del_rq_rb (struct as_data*,struct request*) ;
 struct request* as_find_next_rq (struct as_data*,struct request*) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int rq_fifo_clear (struct request*) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void as_remove_queued_request(struct request_queue *q,
         struct request *rq)
{
 const int data_dir = rq_is_sync(rq);
 struct as_data *ad = q->elevator->elevator_data;
 struct io_context *ioc;

 WARN_ON(RQ_STATE(rq) != AS_RQ_QUEUED);

 ioc = RQ_IOC(rq);
 if (ioc && ioc->aic) {
  BUG_ON(!atomic_read(&ioc->aic->nr_queued));
  atomic_dec(&ioc->aic->nr_queued);
 }





 if (ad->next_rq[data_dir] == rq)
  ad->next_rq[data_dir] = as_find_next_rq(ad, rq);

 rq_fifo_clear(rq);
 as_del_rq_rb(ad, rq);
}
