
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_ext_path {int p_depth; int * p_bh; } ;


 int brelse (int *) ;

void ext4_ext_drop_refs(struct ext4_ext_path *path)
{
 int depth = path->p_depth;
 int i;

 for (i = 0; i <= depth; i++, path++)
  if (path->p_bh) {
   brelse(path->p_bh);
   path->p_bh = ((void*)0);
  }
}
