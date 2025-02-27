
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_global_disk_dqblk {int dqb_use_count; int dqb_itime; int dqb_btime; int dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; } ;
struct mem_dqblk {void* dqb_itime; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; } ;
struct dquot {int dq_flags; struct mem_dqblk dq_dqb; } ;
struct TYPE_2__ {int dq_use_count; } ;


 scalar_t__ DQ_LASTSET_B ;
 TYPE_1__* OCFS2_DQUOT (struct dquot*) ;
 scalar_t__ QIF_BLIMITS_B ;
 scalar_t__ QIF_BTIME_B ;
 scalar_t__ QIF_ILIMITS_B ;
 scalar_t__ QIF_INODES_B ;
 scalar_t__ QIF_ITIME_B ;
 scalar_t__ QIF_SPACE_B ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int test_bit (scalar_t__,int *) ;

__attribute__((used)) static void ocfs2_global_disk2memdqb(struct dquot *dquot, void *dp)
{
 struct ocfs2_global_disk_dqblk *d = dp;
 struct mem_dqblk *m = &dquot->dq_dqb;


 if (!test_bit(DQ_LASTSET_B + QIF_ILIMITS_B, &dquot->dq_flags)) {
  m->dqb_ihardlimit = le64_to_cpu(d->dqb_ihardlimit);
  m->dqb_isoftlimit = le64_to_cpu(d->dqb_isoftlimit);
 }
 if (!test_bit(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags))
  m->dqb_curinodes = le64_to_cpu(d->dqb_curinodes);
 if (!test_bit(DQ_LASTSET_B + QIF_BLIMITS_B, &dquot->dq_flags)) {
  m->dqb_bhardlimit = le64_to_cpu(d->dqb_bhardlimit);
  m->dqb_bsoftlimit = le64_to_cpu(d->dqb_bsoftlimit);
 }
 if (!test_bit(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags))
  m->dqb_curspace = le64_to_cpu(d->dqb_curspace);
 if (!test_bit(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags))
  m->dqb_btime = le64_to_cpu(d->dqb_btime);
 if (!test_bit(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags))
  m->dqb_itime = le64_to_cpu(d->dqb_itime);
 OCFS2_DQUOT(dquot)->dq_use_count = le32_to_cpu(d->dqb_use_count);
}
