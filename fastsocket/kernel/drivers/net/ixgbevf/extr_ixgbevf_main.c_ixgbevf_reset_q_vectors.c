
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int * ring; } ;
struct TYPE_4__ {scalar_t__ count; int * ring; } ;
struct ixgbevf_q_vector {TYPE_1__ tx; TYPE_2__ rx; } ;
struct ixgbevf_adapter {int num_msix_vectors; struct ixgbevf_q_vector** q_vector; } ;


 int NON_Q_VECTORS ;

__attribute__((used)) static inline void ixgbevf_reset_q_vectors(struct ixgbevf_adapter *adapter)
{
 int i, q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

 for (i = 0; i < q_vectors; i++) {
  struct ixgbevf_q_vector *q_vector = adapter->q_vector[i];
  q_vector->rx.ring = ((void*)0);
  q_vector->tx.ring = ((void*)0);
  q_vector->rx.count = 0;
  q_vector->tx.count = 0;
 }
}
