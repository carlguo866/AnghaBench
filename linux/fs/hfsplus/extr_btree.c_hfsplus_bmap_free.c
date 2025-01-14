
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct page {int dummy; } ;
struct hfs_btree {int inode; int free_nodes; } ;
struct hfs_bnode {int this; int next; scalar_t__ type; struct page** page; scalar_t__ page_offset; struct hfs_btree* tree; } ;


 int BNODE_MOD ;
 int BUG_ON (int) ;
 scalar_t__ HFS_NODE_MAP ;
 scalar_t__ IS_ERR (struct hfs_bnode*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 struct hfs_bnode* hfs_bnode_find (struct hfs_btree*,int) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 int hfs_brec_lenoff (struct hfs_bnode*,int,int*) ;
 int hfs_dbg (int ,char*,int) ;
 int* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int mark_inode_dirty (int ) ;
 int pr_crit (char*,int,...) ;
 int set_page_dirty (struct page*) ;

void hfs_bmap_free(struct hfs_bnode *node)
{
 struct hfs_btree *tree;
 struct page *page;
 u16 off, len;
 u32 nidx;
 u8 *data, byte, m;

 hfs_dbg(BNODE_MOD, "btree_free_node: %u\n", node->this);
 BUG_ON(!node->this);
 tree = node->tree;
 nidx = node->this;
 node = hfs_bnode_find(tree, 0);
 if (IS_ERR(node))
  return;
 len = hfs_brec_lenoff(node, 2, &off);
 while (nidx >= len * 8) {
  u32 i;

  nidx -= len * 8;
  i = node->next;
  if (!i) {
              ;
   pr_crit("unable to free bnode %u. "
     "bmap not found!\n",
    node->this);
   hfs_bnode_put(node);
   return;
  }
  hfs_bnode_put(node);
  node = hfs_bnode_find(tree, i);
  if (IS_ERR(node))
   return;
  if (node->type != HFS_NODE_MAP) {
              ;
   pr_crit("invalid bmap found! "
     "(%u,%d)\n",
    node->this, node->type);
   hfs_bnode_put(node);
   return;
  }
  len = hfs_brec_lenoff(node, 0, &off);
 }
 off += node->page_offset + nidx / 8;
 page = node->page[off >> PAGE_SHIFT];
 data = kmap(page);
 off &= ~PAGE_MASK;
 m = 1 << (~nidx & 7);
 byte = data[off];
 if (!(byte & m)) {
  pr_crit("trying to free free bnode "
    "%u(%d)\n",
   node->this, node->type);
  kunmap(page);
  hfs_bnode_put(node);
  return;
 }
 data[off] = byte & ~m;
 set_page_dirty(page);
 kunmap(page);
 hfs_bnode_put(node);
 tree->free_nodes++;
 mark_inode_dirty(tree->inode);
}
