
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct keylist {int top; } ;
struct closure {int dummy; } ;
struct btree_op {int dummy; } ;
struct btree {scalar_t__ level; int key; TYPE_5__* c; int * parent; int write_lock; } ;
struct bkey {int dummy; } ;
struct TYPE_9__ {int btree_split_time; } ;
struct TYPE_8__ {int keys; int start; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EINTR ;
 int ENOMEM ;
 struct btree* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct btree*) ;
 int MAX_KEY ;
 int WARN (int,char*,...) ;
 int bch_btree_insert_keys (struct btree*,struct btree_op*,struct keylist*,struct bkey*) ;
 int bch_btree_insert_node (int *,struct btree_op*,struct keylist*,int *,int *) ;
 struct btree* bch_btree_node_alloc (TYPE_5__*,struct btree_op*,scalar_t__,int *) ;
 int bch_btree_node_write (struct btree*,struct closure*) ;
 int bch_btree_set_root (struct btree*) ;
 int bch_keylist_add (struct keylist*,int *) ;
 int bch_keylist_empty (struct keylist*) ;
 int bch_keylist_init (struct keylist*) ;
 int bch_keylist_push (struct keylist*) ;
 int bch_time_stats_update (int *,int ) ;
 int bkey_copy_key (int *,int *) ;
 int bkey_put (TYPE_5__*,int *) ;
 scalar_t__ bkey_u64s (int *) ;
 int block_bytes (TYPE_5__*) ;
 int * bset_bkey_idx (TYPE_1__*,unsigned int) ;
 int bset_bkey_last (TYPE_1__*) ;
 int btree_blocks (struct btree*) ;
 TYPE_1__* btree_bset_first (struct btree*) ;
 scalar_t__ btree_check_reserve (struct btree*,struct btree_op*) ;
 struct btree* btree_node_alloc_replacement (struct btree*,struct btree_op*) ;
 int btree_node_free (struct btree*) ;
 int closure_init_stack (struct closure*) ;
 int closure_sync (struct closure*) ;
 int local_clock () ;
 int make_btree_freeing_key (struct btree*,int ) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rw_unlock (int,struct btree*) ;
 int set_blocks (TYPE_1__*,int ) ;
 int trace_bcache_btree_node_compact (struct btree*,int) ;
 int trace_bcache_btree_node_split (struct btree*,int) ;

__attribute__((used)) static int btree_split(struct btree *b, struct btree_op *op,
         struct keylist *insert_keys,
         struct bkey *replace_key)
{
 bool split;
 struct btree *n1, *n2 = ((void*)0), *n3 = ((void*)0);
 uint64_t start_time = local_clock();
 struct closure cl;
 struct keylist parent_keys;

 closure_init_stack(&cl);
 bch_keylist_init(&parent_keys);

 if (btree_check_reserve(b, op)) {
  if (!b->level)
   return -EINTR;
  else
   WARN(1, "insufficient reserve for split\n");
 }

 n1 = btree_node_alloc_replacement(b, op);
 if (IS_ERR(n1))
  goto err;

 split = set_blocks(btree_bset_first(n1),
      block_bytes(n1->c)) > (btree_blocks(b) * 4) / 5;

 if (split) {
  unsigned int keys = 0;

  trace_bcache_btree_node_split(b, btree_bset_first(n1)->keys);

  n2 = bch_btree_node_alloc(b->c, op, b->level, b->parent);
  if (IS_ERR(n2))
   goto err_free1;

  if (!b->parent) {
   n3 = bch_btree_node_alloc(b->c, op, b->level + 1, ((void*)0));
   if (IS_ERR(n3))
    goto err_free2;
  }

  mutex_lock(&n1->write_lock);
  mutex_lock(&n2->write_lock);

  bch_btree_insert_keys(n1, op, insert_keys, replace_key);






  while (keys < (btree_bset_first(n1)->keys * 3) / 5)
   keys += bkey_u64s(bset_bkey_idx(btree_bset_first(n1),
       keys));

  bkey_copy_key(&n1->key,
         bset_bkey_idx(btree_bset_first(n1), keys));
  keys += bkey_u64s(bset_bkey_idx(btree_bset_first(n1), keys));

  btree_bset_first(n2)->keys = btree_bset_first(n1)->keys - keys;
  btree_bset_first(n1)->keys = keys;

  memcpy(btree_bset_first(n2)->start,
         bset_bkey_last(btree_bset_first(n1)),
         btree_bset_first(n2)->keys * sizeof(uint64_t));

  bkey_copy_key(&n2->key, &b->key);

  bch_keylist_add(&parent_keys, &n2->key);
  bch_btree_node_write(n2, &cl);
  mutex_unlock(&n2->write_lock);
  rw_unlock(1, n2);
 } else {
  trace_bcache_btree_node_compact(b, btree_bset_first(n1)->keys);

  mutex_lock(&n1->write_lock);
  bch_btree_insert_keys(n1, op, insert_keys, replace_key);
 }

 bch_keylist_add(&parent_keys, &n1->key);
 bch_btree_node_write(n1, &cl);
 mutex_unlock(&n1->write_lock);

 if (n3) {

  mutex_lock(&n3->write_lock);
  bkey_copy_key(&n3->key, &MAX_KEY);
  bch_btree_insert_keys(n3, op, &parent_keys, ((void*)0));
  bch_btree_node_write(n3, &cl);
  mutex_unlock(&n3->write_lock);

  closure_sync(&cl);
  bch_btree_set_root(n3);
  rw_unlock(1, n3);
 } else if (!b->parent) {

  closure_sync(&cl);
  bch_btree_set_root(n1);
 } else {

  closure_sync(&cl);
  make_btree_freeing_key(b, parent_keys.top);
  bch_keylist_push(&parent_keys);

  bch_btree_insert_node(b->parent, op, &parent_keys, ((void*)0), ((void*)0));
  BUG_ON(!bch_keylist_empty(&parent_keys));
 }

 btree_node_free(b);
 rw_unlock(1, n1);

 bch_time_stats_update(&b->c->btree_split_time, start_time);

 return 0;
err_free2:
 bkey_put(b->c, &n2->key);
 btree_node_free(n2);
 rw_unlock(1, n2);
err_free1:
 bkey_put(b->c, &n1->key);
 btree_node_free(n1);
 rw_unlock(1, n1);
err:
 WARN(1, "bcache: btree split failed (level %u)", b->level);

 if (n3 == ERR_PTR(-EAGAIN) ||
     n2 == ERR_PTR(-EAGAIN) ||
     n1 == ERR_PTR(-EAGAIN))
  return -EAGAIN;

 return -ENOMEM;
}
