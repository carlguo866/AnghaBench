
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int inode_page_locked; int ofs_in_node; int cur_level; int max_level; struct page* node_page; struct page* inode_page; TYPE_1__* inode; int data_blkaddr; void* nid; } ;
typedef scalar_t__ pgoff_t ;
typedef void* nid_t ;
struct TYPE_5__ {void* i_ino; } ;


 int ALLOC_NODE ;
 int ENOENT ;
 int ENOSPC ;
 struct f2fs_sb_info* F2FS_I_SB (TYPE_1__*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int LOOKUP_NODE_RA ;
 int PTR_ERR (struct page*) ;
 int datablock_addr (TYPE_1__*,struct page*,int) ;
 int f2fs_alloc_nid (struct f2fs_sb_info*,void**) ;
 int f2fs_alloc_nid_done (struct f2fs_sb_info*,void*) ;
 int f2fs_alloc_nid_failed (struct f2fs_sb_info*,void*) ;
 struct page* f2fs_get_node_page (struct f2fs_sb_info*,void*) ;
 struct page* f2fs_get_node_page_ra (struct page*,int) ;
 scalar_t__ f2fs_has_inline_data (TYPE_1__*) ;
 struct page* f2fs_new_node_page (struct dnode_of_data*,unsigned int) ;
 int f2fs_put_page (struct page*,int) ;
 void* get_nid (struct page*,int,int) ;
 int get_node_path (TYPE_1__*,scalar_t__,int*,unsigned int*) ;
 int set_nid (struct page*,int,void*,int) ;
 int unlock_page (struct page*) ;

int f2fs_get_dnode_of_data(struct dnode_of_data *dn, pgoff_t index, int mode)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(dn->inode);
 struct page *npage[4];
 struct page *parent = ((void*)0);
 int offset[4];
 unsigned int noffset[4];
 nid_t nids[4];
 int level, i = 0;
 int err = 0;

 level = get_node_path(dn->inode, index, offset, noffset);
 if (level < 0)
  return level;

 nids[0] = dn->inode->i_ino;
 npage[0] = dn->inode_page;

 if (!npage[0]) {
  npage[0] = f2fs_get_node_page(sbi, nids[0]);
  if (IS_ERR(npage[0]))
   return PTR_ERR(npage[0]);
 }


 if (f2fs_has_inline_data(dn->inode) && index) {
  err = -ENOENT;
  f2fs_put_page(npage[0], 1);
  goto release_out;
 }

 parent = npage[0];
 if (level != 0)
  nids[1] = get_nid(parent, offset[0], 1);
 dn->inode_page = npage[0];
 dn->inode_page_locked = 1;


 for (i = 1; i <= level; i++) {
  bool done = 0;

  if (!nids[i] && mode == ALLOC_NODE) {

   if (!f2fs_alloc_nid(sbi, &(nids[i]))) {
    err = -ENOSPC;
    goto release_pages;
   }

   dn->nid = nids[i];
   npage[i] = f2fs_new_node_page(dn, noffset[i]);
   if (IS_ERR(npage[i])) {
    f2fs_alloc_nid_failed(sbi, nids[i]);
    err = PTR_ERR(npage[i]);
    goto release_pages;
   }

   set_nid(parent, offset[i - 1], nids[i], i == 1);
   f2fs_alloc_nid_done(sbi, nids[i]);
   done = 1;
  } else if (mode == LOOKUP_NODE_RA && i == level && level > 1) {
   npage[i] = f2fs_get_node_page_ra(parent, offset[i - 1]);
   if (IS_ERR(npage[i])) {
    err = PTR_ERR(npage[i]);
    goto release_pages;
   }
   done = 1;
  }
  if (i == 1) {
   dn->inode_page_locked = 0;
   unlock_page(parent);
  } else {
   f2fs_put_page(parent, 1);
  }

  if (!done) {
   npage[i] = f2fs_get_node_page(sbi, nids[i]);
   if (IS_ERR(npage[i])) {
    err = PTR_ERR(npage[i]);
    f2fs_put_page(npage[0], 0);
    goto release_out;
   }
  }
  if (i < level) {
   parent = npage[i];
   nids[i + 1] = get_nid(parent, offset[i], 0);
  }
 }
 dn->nid = nids[level];
 dn->ofs_in_node = offset[level];
 dn->node_page = npage[level];
 dn->data_blkaddr = datablock_addr(dn->inode,
    dn->node_page, dn->ofs_in_node);
 return 0;

release_pages:
 f2fs_put_page(parent, 1);
 if (i > 1)
  f2fs_put_page(npage[0], 0);
release_out:
 dn->inode_page = ((void*)0);
 dn->node_page = ((void*)0);
 if (err == -ENOENT) {
  dn->cur_level = i;
  dn->max_level = level;
  dn->ofs_in_node = offset[level];
 }
 return err;
}
