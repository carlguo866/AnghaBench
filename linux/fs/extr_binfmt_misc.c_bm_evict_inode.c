
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_private; } ;
struct TYPE_3__ {int flags; int interp_file; } ;
typedef TYPE_1__ Node ;


 int MISC_FMT_OPEN_FILE ;
 int clear_inode (struct inode*) ;
 int filp_close (int ,int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void bm_evict_inode(struct inode *inode)
{
 Node *e = inode->i_private;

 if (e && e->flags & MISC_FMT_OPEN_FILE)
  filp_close(e->interp_file, ((void*)0));

 clear_inode(inode);
 kfree(e);
}
