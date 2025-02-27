
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spufs_inode_info {int i_openers; struct spu_context* i_ctx; } ;
struct spu_context {int mapping_lock; int * signal1; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 struct spufs_inode_info* SPUFS_I (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
spufs_signal1_release(struct inode *inode, struct file *file)
{
 struct spufs_inode_info *i = SPUFS_I(inode);
 struct spu_context *ctx = i->i_ctx;

 mutex_lock(&ctx->mapping_lock);
 if (!--i->i_openers)
  ctx->signal1 = ((void*)0);
 mutex_unlock(&ctx->mapping_lock);
 return 0;
}
