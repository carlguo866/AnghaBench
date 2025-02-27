
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_q_vector {int napi; } ;
struct iavf_adapter {int num_msix_vectors; struct iavf_q_vector* q_vectors; } ;


 int NONQ_VECS ;
 int napi_disable (int *) ;

__attribute__((used)) static void iavf_napi_disable_all(struct iavf_adapter *adapter)
{
 int q_idx;
 struct iavf_q_vector *q_vector;
 int q_vectors = adapter->num_msix_vectors - NONQ_VECS;

 for (q_idx = 0; q_idx < q_vectors; q_idx++) {
  q_vector = &adapter->q_vectors[q_idx];
  napi_disable(&q_vector->napi);
 }
}
