
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_3__ {int head; scalar_t__ va; } ;
struct TYPE_4__ {TYPE_1__ sq; } ;
struct ocrdma_dev {TYPE_2__ mq; } ;



__attribute__((used)) static inline struct ocrdma_mqe *ocrdma_get_mqe(struct ocrdma_dev *dev)
{
 return (struct ocrdma_mqe *)((u8 *) dev->mq.sq.va +
         (dev->mq.sq.head *
          sizeof(struct ocrdma_mqe)));
}
