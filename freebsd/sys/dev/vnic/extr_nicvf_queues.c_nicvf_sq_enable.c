
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct snd_queue {int dummy; } ;
struct nicvf {int dummy; } ;


 int NICVF_SQ_EN ;
 int NIC_QSET_SQ_0_7_CFG ;
 int NIC_QSET_SQ_0_7_DOOR ;
 int nicvf_queue_reg_read (struct nicvf*,int ,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,int ) ;

__attribute__((used)) static void
nicvf_sq_enable(struct nicvf *nic, struct snd_queue *sq, int qidx)
{
 uint64_t sq_cfg;

 sq_cfg = nicvf_queue_reg_read(nic, NIC_QSET_SQ_0_7_CFG, qidx);
 sq_cfg |= NICVF_SQ_EN;
 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_CFG, qidx, sq_cfg);

 nicvf_queue_reg_write(nic, NIC_QSET_SQ_0_7_DOOR, qidx, 0);
}
