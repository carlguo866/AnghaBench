
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_pnode {int iip; struct ubifs_nnode* parent; void* num; struct ubifs_lprops* lprops; } ;
struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {scalar_t__ lnum; scalar_t__ offs; struct ubifs_pnode* pnode; } ;
struct ubifs_lprops {scalar_t__ free; int flags; } ;
struct ubifs_info {scalar_t__ leb_size; scalar_t__ lpt_first; scalar_t__ lpt_last; scalar_t__ big_lpt; int pnode_sz; int ubi; void* lpt_nod_buf; } ;
struct TYPE_2__ {struct ubifs_pnode* pnode; } ;
struct lpt_scan_node {int in_tree; TYPE_1__ ptr; struct ubifs_pnode pnode; } ;


 struct ubifs_pnode* ERR_PTR (int) ;
 int UBIFS_LPT_FANOUT ;
 void* calc_pnode_num_from_parent (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int memset (struct ubifs_pnode*,int ,int) ;
 int set_pnode_lnum (struct ubifs_info*,struct ubifs_pnode*) ;
 int ubi_read (int ,scalar_t__,void*,scalar_t__,int ) ;
 int ubifs_assert (int) ;
 int ubifs_categorize_lprops (struct ubifs_info*,struct ubifs_lprops* const) ;
 int unpack_pnode (struct ubifs_info*,void*,struct ubifs_pnode*) ;
 int validate_pnode (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_nnode*,int) ;

__attribute__((used)) static struct ubifs_pnode *scan_get_pnode(struct ubifs_info *c,
       struct lpt_scan_node *path,
       struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch;
 struct ubifs_pnode *pnode;
 void *buf = c->lpt_nod_buf;
 int err;

 branch = &parent->nbranch[iip];
 pnode = branch->pnode;
 if (pnode) {
  path->in_tree = 1;
  path->ptr.pnode = pnode;
  return pnode;
 }
 pnode = &path->pnode;
 path->in_tree = 0;
 path->ptr.pnode = pnode;
 memset(pnode, 0, sizeof(struct ubifs_pnode));
 if (branch->lnum == 0) {





  int i;

  if (c->big_lpt)
   pnode->num = calc_pnode_num_from_parent(c, parent, iip);
  for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
   struct ubifs_lprops * const lprops = &pnode->lprops[i];

   lprops->free = c->leb_size;
   lprops->flags = ubifs_categorize_lprops(c, lprops);
  }
 } else {
  ubifs_assert(branch->lnum >= c->lpt_first &&
        branch->lnum <= c->lpt_last);
  ubifs_assert(branch->offs >= 0 && branch->offs < c->leb_size);
  err = ubi_read(c->ubi, branch->lnum, buf, branch->offs,
          c->pnode_sz);
  if (err)
   return ERR_PTR(err);
  err = unpack_pnode(c, buf, pnode);
  if (err)
   return ERR_PTR(err);
 }
 err = validate_pnode(c, pnode, parent, iip);
 if (err)
  return ERR_PTR(err);
 if (!c->big_lpt)
  pnode->num = calc_pnode_num_from_parent(c, parent, iip);
 pnode->parent = parent;
 pnode->iip = iip;
 set_pnode_lnum(c, pnode);
 return pnode;
}
