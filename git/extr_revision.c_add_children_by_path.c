
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tree_desc {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct tree {TYPE_1__ object; int size; int buffer; } ;
struct repository {int dummy; } ;
struct name_entry {int oid; int path; int mode; } ;
struct hashmap {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct blob {TYPE_2__ object; } ;




 int UNINTERESTING ;
 int free_tree_buffer (struct tree*) ;
 int init_tree_desc (struct tree_desc*,int ,int ) ;
 struct blob* lookup_blob (struct repository*,int *) ;
 struct tree* lookup_tree (struct repository*,int *) ;
 int object_type (int ) ;
 scalar_t__ parse_tree_gently (struct tree*,int) ;
 int paths_and_oids_insert (struct hashmap*,int ,int *) ;
 scalar_t__ tree_entry (struct tree_desc*,struct name_entry*) ;

__attribute__((used)) static void add_children_by_path(struct repository *r,
     struct tree *tree,
     struct hashmap *map)
{
 struct tree_desc desc;
 struct name_entry entry;

 if (!tree)
  return;

 if (parse_tree_gently(tree, 1) < 0)
  return;

 init_tree_desc(&desc, tree->buffer, tree->size);
 while (tree_entry(&desc, &entry)) {
  switch (object_type(entry.mode)) {
  case 128:
   paths_and_oids_insert(map, entry.path, &entry.oid);

   if (tree->object.flags & UNINTERESTING) {
    struct tree *child = lookup_tree(r, &entry.oid);
    if (child)
     child->object.flags |= UNINTERESTING;
   }
   break;
  case 129:
   if (tree->object.flags & UNINTERESTING) {
    struct blob *child = lookup_blob(r, &entry.oid);
    if (child)
     child->object.flags |= UNINTERESTING;
   }
   break;
  default:

   break;
  }
 }

 free_tree_buffer(tree);
}
