
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {scalar_t__ q_type; } ;


 unsigned long CWQ_ENTRY_SIZE ;
 unsigned long CWQ_NUM_ENTRIES ;
 scalar_t__ HV_NCS_QTYPE_MAU ;
 unsigned long MAU_ENTRY_SIZE ;
 unsigned long MAU_NUM_ENTRIES ;

__attribute__((used)) static unsigned long spu_next_offset(struct spu_queue *q, unsigned long off)
{
 if (q->q_type == HV_NCS_QTYPE_MAU) {
  off += MAU_ENTRY_SIZE;
  if (off == (MAU_ENTRY_SIZE * MAU_NUM_ENTRIES))
   off = 0;
 } else {
  off += CWQ_ENTRY_SIZE;
  if (off == (CWQ_ENTRY_SIZE * CWQ_NUM_ENTRIES))
   off = 0;
 }
 return off;
}
