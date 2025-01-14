
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_group {scalar_t__ async_idle_bfqq; scalar_t__** async_bfqq; } ;
struct bfq_data {int dummy; } ;


 int IOPRIO_BE_NR ;
 int bfq_bfqq_end_wr (scalar_t__) ;

void bfq_end_wr_async_queues(struct bfq_data *bfqd,
        struct bfq_group *bfqg)
{
 int i, j;

 for (i = 0; i < 2; i++)
  for (j = 0; j < IOPRIO_BE_NR; j++)
   if (bfqg->async_bfqq[i][j])
    bfq_bfqq_end_wr(bfqg->async_bfqq[i][j]);
 if (bfqg->async_idle_bfqq)
  bfq_bfqq_end_wr(bfqg->async_idle_bfqq);
}
