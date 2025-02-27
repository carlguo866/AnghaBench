
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int cl_next_free_rec; TYPE_3__* cl_recs; int cl_count; int cl_bpc; int cl_cpg; } ;
struct TYPE_10__ {TYPE_4__ i_chain; } ;
struct TYPE_6__ {int i_total; int i_used; } ;
struct TYPE_7__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_5__ id2; TYPE_2__ id1; int i_generation; int i_clusters; scalar_t__ i_size; int i_signature; scalar_t__ i_blkno; } ;
struct TYPE_8__ {unsigned long long c_free; unsigned long long c_total; scalar_t__ c_blkno; } ;


 int le32_to_cpu (int ) ;
 int printk (char*,int,...) ;

__attribute__((used)) static inline void ocfs2_debug_suballoc_inode(struct ocfs2_dinode *fe)
{
 int i;

 printk("Suballoc Inode %llu:\n", (unsigned long long)fe->i_blkno);
 printk("i_signature:                  %s\n", fe->i_signature);
 printk("i_size:                       %llu\n",
        (unsigned long long)fe->i_size);
 printk("i_clusters:                   %u\n", fe->i_clusters);
 printk("i_generation:                 %u\n",
        le32_to_cpu(fe->i_generation));
 printk("id1.bitmap1.i_used:           %u\n",
        le32_to_cpu(fe->id1.bitmap1.i_used));
 printk("id1.bitmap1.i_total:          %u\n",
        le32_to_cpu(fe->id1.bitmap1.i_total));
 printk("id2.i_chain.cl_cpg:           %u\n", fe->id2.i_chain.cl_cpg);
 printk("id2.i_chain.cl_bpc:           %u\n", fe->id2.i_chain.cl_bpc);
 printk("id2.i_chain.cl_count:         %u\n", fe->id2.i_chain.cl_count);
 printk("id2.i_chain.cl_next_free_rec: %u\n",
        fe->id2.i_chain.cl_next_free_rec);
 for(i = 0; i < fe->id2.i_chain.cl_next_free_rec; i++) {
  printk("fe->id2.i_chain.cl_recs[%d].c_free:  %u\n", i,
         fe->id2.i_chain.cl_recs[i].c_free);
  printk("fe->id2.i_chain.cl_recs[%d].c_total: %u\n", i,
         fe->id2.i_chain.cl_recs[i].c_total);
  printk("fe->id2.i_chain.cl_recs[%d].c_blkno: %llu\n", i,
         (unsigned long long)fe->id2.i_chain.cl_recs[i].c_blkno);
 }
}
