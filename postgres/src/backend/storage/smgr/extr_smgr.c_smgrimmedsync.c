
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* smgr_immedsync ) (TYPE_1__*,int ) ;} ;
struct TYPE_5__ {size_t smgr_which; } ;
typedef TYPE_1__* SMgrRelation ;
typedef int ForkNumber ;


 TYPE_3__* smgrsw ;
 int stub1 (TYPE_1__*,int ) ;

void
smgrimmedsync(SMgrRelation reln, ForkNumber forknum)
{
 smgrsw[reln->smgr_which].smgr_immedsync(reln, forknum);
}
