
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct gfs2_rgrp {int dummy; } ;
struct gfs2_rbm {int bii; int offset; TYPE_2__* rgd; } ;
struct gfs2_meta_header {int dummy; } ;
struct TYPE_6__ {int bi_blocks; } ;
struct TYPE_5__ {int rd_data0; TYPE_1__* rd_sbd; } ;
struct TYPE_4__ {int sd_blocks_per_bitmap; } ;


 int E2BIG ;
 int GFS2_NBBY ;
 TYPE_3__* rbm_bi (struct gfs2_rbm*) ;
 int rgrp_contains_block (TYPE_2__*,int) ;

__attribute__((used)) static int gfs2_rbm_from_block(struct gfs2_rbm *rbm, u64 block)
{
 if (!rgrp_contains_block(rbm->rgd, block))
  return -E2BIG;
 rbm->bii = 0;
 rbm->offset = block - rbm->rgd->rd_data0;

 if (rbm->offset < rbm_bi(rbm)->bi_blocks)
  return 0;


 rbm->offset += (sizeof(struct gfs2_rgrp) -
   sizeof(struct gfs2_meta_header)) * GFS2_NBBY;
 rbm->bii = rbm->offset / rbm->rgd->rd_sbd->sd_blocks_per_bitmap;
 rbm->offset -= rbm->bii * rbm->rgd->rd_sbd->sd_blocks_per_bitmap;
 return 0;
}
