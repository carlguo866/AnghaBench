
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int free_work; int refcount; } ;


 int BUG_ON (int) ;
 int queue_work (int ,int *) ;
 int rds_wq ;
 scalar_t__ refcount_dec_and_test (int *) ;
 scalar_t__ refcount_read (int *) ;

void rds_ib_dev_put(struct rds_ib_device *rds_ibdev)
{
 BUG_ON(refcount_read(&rds_ibdev->refcount) == 0);
 if (refcount_dec_and_test(&rds_ibdev->refcount))
  queue_work(rds_wq, &rds_ibdev->free_work);
}
