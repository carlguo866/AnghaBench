
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qman_fq {int fqid; int flags; int idx; scalar_t__ cgr_groupid; int state; } ;


 int EINVAL ;
 int QMAN_FQ_FLAG_DYNAMIC_FQID ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int WARN (int,char*,int) ;
 int WARN_ON (struct qman_fq*) ;
 struct qman_fq** fq_table ;
 int num_fqids ;
 int qman_alloc_fqid (int*) ;
 int qman_fq_state_oos ;

int qman_create_fq(u32 fqid, u32 flags, struct qman_fq *fq)
{
 if (flags & QMAN_FQ_FLAG_DYNAMIC_FQID) {
  int ret = qman_alloc_fqid(&fqid);

  if (ret)
   return ret;
 }
 fq->fqid = fqid;
 fq->flags = flags;
 fq->state = qman_fq_state_oos;
 fq->cgr_groupid = 0;


 if (fqid == 0 || fqid >= num_fqids) {
  WARN(1, "bad fqid %d\n", fqid);
  return -EINVAL;
 }

 fq->idx = fqid * 2;
 if (flags & QMAN_FQ_FLAG_NO_MODIFY)
  fq->idx++;

 WARN_ON(fq_table[fq->idx]);
 fq_table[fq->idx] = fq;

 return 0;
}
