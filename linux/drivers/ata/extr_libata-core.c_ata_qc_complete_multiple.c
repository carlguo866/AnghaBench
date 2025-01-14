
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct ata_queued_cmd {int dummy; } ;
struct ata_port {unsigned long long qc_active; } ;


 unsigned long long ATA_TAG_INTERNAL ;
 int EINVAL ;
 unsigned int __ffs64 (unsigned long long) ;
 int ata_port_err (struct ata_port*,char*,unsigned long long,unsigned long long) ;
 int ata_qc_complete (struct ata_queued_cmd*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,unsigned int) ;
 scalar_t__ unlikely (unsigned long long) ;

int ata_qc_complete_multiple(struct ata_port *ap, u64 qc_active)
{
 u64 done_mask, ap_qc_active = ap->qc_active;
 int nr_done = 0;






 if (ap_qc_active & (1ULL << ATA_TAG_INTERNAL)) {
  qc_active |= (qc_active & 0x01) << ATA_TAG_INTERNAL;
  qc_active ^= qc_active & 0x01;
 }

 done_mask = ap_qc_active ^ qc_active;

 if (unlikely(done_mask & qc_active)) {
  ata_port_err(ap, "illegal qc_active transition (%08llx->%08llx)\n",
        ap->qc_active, qc_active);
  return -EINVAL;
 }

 while (done_mask) {
  struct ata_queued_cmd *qc;
  unsigned int tag = __ffs64(done_mask);

  qc = ata_qc_from_tag(ap, tag);
  if (qc) {
   ata_qc_complete(qc);
   nr_done++;
  }
  done_mask &= ~(1ULL << tag);
 }

 return nr_done;
}
