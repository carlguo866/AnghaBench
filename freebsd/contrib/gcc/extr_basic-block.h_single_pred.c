
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int basic_block ;
struct TYPE_2__ {int src; } ;


 TYPE_1__* single_pred_edge (int ) ;

__attribute__((used)) static inline basic_block
single_pred (basic_block bb)
{
  return single_pred_edge (bb)->src;
}
