
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct index_state {TYPE_1__* cache_tree; } ;
struct cache_tree {int oid; } ;
struct TYPE_4__ {int oid; } ;


 int WRITE_TREE_IGNORE_CACHE_TREE ;
 int WRITE_TREE_PREFIX_ERROR ;
 int WRITE_TREE_UNMERGED_INDEX ;
 TYPE_1__* cache_tree () ;
 struct cache_tree* cache_tree_find (TYPE_1__*,char const*) ;
 int cache_tree_free (TYPE_1__**) ;
 scalar_t__ cache_tree_update (struct index_state*,int) ;
 int oidcpy (struct object_id*,int *) ;

__attribute__((used)) static int write_index_as_tree_internal(struct object_id *oid,
     struct index_state *index_state,
     int cache_tree_valid,
     int flags,
     const char *prefix)
{
 if (flags & WRITE_TREE_IGNORE_CACHE_TREE) {
  cache_tree_free(&index_state->cache_tree);
  cache_tree_valid = 0;
 }

 if (!index_state->cache_tree)
  index_state->cache_tree = cache_tree();

 if (!cache_tree_valid && cache_tree_update(index_state, flags) < 0)
  return WRITE_TREE_UNMERGED_INDEX;

 if (prefix) {
  struct cache_tree *subtree;
  subtree = cache_tree_find(index_state->cache_tree, prefix);
  if (!subtree)
   return WRITE_TREE_PREFIX_ERROR;
  oidcpy(oid, &subtree->oid);
 }
 else
  oidcpy(oid, &index_state->cache_tree->oid);

 return 0;
}
