
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mem_dqinfo {int dqi_flags; TYPE_2__* dqi_format; } ;
struct TYPE_4__ {size_t type; } ;
struct dquot {TYPE_1__ dq_id; int dq_sb; } ;
struct TYPE_6__ {struct mem_dqinfo* info; } ;
struct TYPE_5__ {scalar_t__ qf_fmt_id; } ;


 int CAP_SYS_RESOURCE ;
 int DQF_ROOT_SQUASH ;
 scalar_t__ QFMT_VFS_OLD ;
 scalar_t__ capable (int ) ;
 TYPE_3__* sb_dqopt (int ) ;

__attribute__((used)) static int ignore_hardlimit(struct dquot *dquot)
{
 struct mem_dqinfo *info = &sb_dqopt(dquot->dq_sb)->info[dquot->dq_id.type];

 return capable(CAP_SYS_RESOURCE) &&
        (info->dqi_format->qf_fmt_id != QFMT_VFS_OLD ||
  !(info->dqi_flags & DQF_ROOT_SQUASH));
}
