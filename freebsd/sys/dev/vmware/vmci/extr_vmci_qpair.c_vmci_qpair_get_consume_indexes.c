
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vmci_queue_header {int dummy; } ;
struct vmci_qpair {scalar_t__ consume_q_size; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_INVALID_SIZE ;
 int VMCI_SUCCESS ;
 int vmci_qpair_get_queue_headers (struct vmci_qpair const*,struct vmci_queue_header**,struct vmci_queue_header**) ;
 int vmci_queue_header_get_pointers (struct vmci_queue_header*,struct vmci_queue_header*,scalar_t__*,scalar_t__*) ;

int
vmci_qpair_get_consume_indexes(const struct vmci_qpair *qpair,
    uint64_t *consumer_tail, uint64_t *producer_head)
{
 struct vmci_queue_header *consume_q_header;
 struct vmci_queue_header *produce_q_header;

 if (!qpair)
  return (VMCI_ERROR_INVALID_ARGS);

 vmci_qpair_get_queue_headers(qpair, &produce_q_header,
     &consume_q_header);
 vmci_queue_header_get_pointers(consume_q_header, produce_q_header,
     consumer_tail, producer_head);

 if ((consumer_tail && *consumer_tail >= qpair->consume_q_size) ||
     (producer_head && *producer_head >= qpair->consume_q_size))
  return (VMCI_ERROR_INVALID_SIZE);

 return (VMCI_SUCCESS);
}
