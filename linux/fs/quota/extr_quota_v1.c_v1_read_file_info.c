
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v1_disk_dqblk {scalar_t__ dqb_btime; scalar_t__ dqb_itime; } ;
struct super_block {TYPE_1__* s_op; } ;
struct quota_info {int dqio_sem; TYPE_2__* info; } ;
struct TYPE_4__ {int dqi_max_spc_limit; int dqi_max_ino_limit; scalar_t__ dqi_bgrace; scalar_t__ dqi_igrace; } ;
struct TYPE_3__ {int (* quota_read ) (struct super_block*,int,char*,int,int ) ;} ;


 int EIO ;
 scalar_t__ MAX_DQ_TIME ;
 scalar_t__ MAX_IQ_TIME ;
 int QUOTABLOCK_BITS ;
 int down_read (int *) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;
 int up_read (int *) ;
 int v1_dqoff (int ) ;

__attribute__((used)) static int v1_read_file_info(struct super_block *sb, int type)
{
 struct quota_info *dqopt = sb_dqopt(sb);
 struct v1_disk_dqblk dqblk;
 int ret;

 down_read(&dqopt->dqio_sem);
 ret = sb->s_op->quota_read(sb, type, (char *)&dqblk,
    sizeof(struct v1_disk_dqblk), v1_dqoff(0));
 if (ret != sizeof(struct v1_disk_dqblk)) {
  if (ret >= 0)
   ret = -EIO;
  goto out;
 }
 ret = 0;

 dqopt->info[type].dqi_max_spc_limit = 0xffffffffULL << QUOTABLOCK_BITS;
 dqopt->info[type].dqi_max_ino_limit = 0xffffffff;
 dqopt->info[type].dqi_igrace =
   dqblk.dqb_itime ? dqblk.dqb_itime : MAX_IQ_TIME;
 dqopt->info[type].dqi_bgrace =
   dqblk.dqb_btime ? dqblk.dqb_btime : MAX_DQ_TIME;
out:
 up_read(&dqopt->dqio_sem);
 return ret;
}
