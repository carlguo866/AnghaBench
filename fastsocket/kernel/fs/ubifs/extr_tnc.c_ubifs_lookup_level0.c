
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {unsigned long time; int level; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int key; struct ubifs_znode* znode; } ;
struct ubifs_info {struct ubifs_zbranch zroot; } ;


 int DBGKEY (union ubifs_key const*) ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 int PTR_ERR (struct ubifs_znode*) ;
 int dbg_tnc (char*,int,...) ;
 unsigned long get_seconds () ;
 int is_hash_key (struct ubifs_info*,union ubifs_key const*) ;
 scalar_t__ keys_cmp (struct ubifs_info*,union ubifs_key const*,int *) ;
 int tnc_prev (struct ubifs_info*,struct ubifs_znode**,int*) ;
 struct ubifs_znode* ubifs_load_znode (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_znode*,int) ;
 int ubifs_search_zbranch (struct ubifs_info*,struct ubifs_znode*,union ubifs_key const*,int*) ;
 scalar_t__ unlikely (int) ;

int ubifs_lookup_level0(struct ubifs_info *c, const union ubifs_key *key,
   struct ubifs_znode **zn, int *n)
{
 int err, exact;
 struct ubifs_znode *znode;
 unsigned long time = get_seconds();

 dbg_tnc("search key %s", DBGKEY(key));

 znode = c->zroot.znode;
 if (unlikely(!znode)) {
  znode = ubifs_load_znode(c, &c->zroot, ((void*)0), 0);
  if (IS_ERR(znode))
   return PTR_ERR(znode);
 }

 znode->time = time;

 while (1) {
  struct ubifs_zbranch *zbr;

  exact = ubifs_search_zbranch(c, znode, key, n);

  if (znode->level == 0)
   break;

  if (*n < 0)
   *n = 0;
  zbr = &znode->zbranch[*n];

  if (zbr->znode) {
   znode->time = time;
   znode = zbr->znode;
   continue;
  }


  znode = ubifs_load_znode(c, zbr, znode, *n);
  if (IS_ERR(znode))
   return PTR_ERR(znode);
 }

 *zn = znode;
 if (exact || !is_hash_key(c, key) || *n != -1) {
  dbg_tnc("found %d, lvl %d, n %d", exact, znode->level, *n);
  return exact;
 }
 err = tnc_prev(c, &znode, n);
 if (err == -ENOENT) {
  dbg_tnc("found 0, lvl %d, n -1", znode->level);
  *n = -1;
  return 0;
 }
 if (unlikely(err < 0))
  return err;
 if (keys_cmp(c, key, &znode->zbranch[*n].key)) {
  dbg_tnc("found 0, lvl %d, n -1", znode->level);
  *n = -1;
  return 0;
 }

 dbg_tnc("found 1, lvl %d, n %d", znode->level, *n);
 *zn = znode;
 return 1;
}
