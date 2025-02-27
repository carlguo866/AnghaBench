
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ttop; size_t tlen; TYPE_2__* tree; } ;
typedef TYPE_1__ pdf_cmap ;
struct TYPE_5__ {unsigned int parent; unsigned int right; unsigned int left; } ;
typedef TYPE_2__ cmap_splay ;


 unsigned int EMPTY ;
 int assert (int) ;

__attribute__((used)) static unsigned int delete_node(pdf_cmap *cmap, unsigned int current)
{
 cmap_splay *tree = cmap->tree;
 unsigned int parent;
 unsigned int replacement;

 assert(current != EMPTY);

 parent = tree[current].parent;
 if (tree[current].right == EMPTY)
 {
  if (parent == EMPTY)
  {
   replacement = cmap->ttop = tree[current].left;
  }
  else if (tree[parent].left == current)
  {
   replacement = tree[parent].left = tree[current].left;
  }
  else
  {
   assert(tree[parent].right == current);
   replacement = tree[parent].right = tree[current].left;
  }
  if (replacement != EMPTY)
   tree[replacement].parent = parent;
  else
   replacement = parent;
 }
 else if (tree[current].left == EMPTY)
 {
  if (parent == EMPTY)
  {
   replacement = cmap->ttop = tree[current].right;
  }
  else if (tree[parent].left == current)
  {
   replacement = tree[parent].left = tree[current].right;
  }
  else
  {
   assert(tree[parent].right == current);
   replacement = tree[parent].right = tree[current].right;
  }
  if (replacement != EMPTY)
   tree[replacement].parent = parent;
  else
   replacement = parent;
 }
 else
 {

  unsigned int amputee = current;
  replacement = tree[current].left;
  while (tree[replacement].right != EMPTY) {
   amputee = replacement;
   replacement = tree[replacement].right;
  }

  if (amputee == current)
  {
   tree[amputee].left = tree[replacement].left;
   if (tree[amputee].left != EMPTY)
    tree[tree[amputee].left].parent = amputee;
  }
  else
  {
   tree[amputee].right = tree[replacement].left;
   if (tree[amputee].right != EMPTY)
    tree[tree[amputee].right].parent = amputee;
  }

  tree[replacement].parent = parent;
  if (parent == EMPTY)
  {
   tree[replacement].parent = EMPTY;
   cmap->ttop = replacement;
  }
  else if (tree[parent].left == current)
   tree[parent].left = replacement;
  else
  {
   assert(tree[parent].right == current);
   tree[parent].right = replacement;
  }
  tree[replacement].left = tree[current].left;
  if (tree[replacement].left != EMPTY)
   tree[tree[replacement].left].parent = replacement;
  tree[replacement].right = tree[current].right;
  if (tree[replacement].right != EMPTY)
   tree[tree[replacement].right].parent = replacement;
 }


 cmap->tlen--;
 if (current != (unsigned int) cmap->tlen)
 {
  if (replacement == (unsigned int) cmap->tlen)
   replacement = current;
  tree[current] = tree[cmap->tlen];
  parent = tree[current].parent;
  if (parent == EMPTY)
   cmap->ttop = current;
  else if (tree[parent].left == (unsigned int) cmap->tlen)
   tree[parent].left = current;
  else
  {
   assert(tree[parent].right == (unsigned int) cmap->tlen);
   tree[parent].right = current;
  }
  if (tree[current].left != EMPTY)
  {
   assert(tree[tree[current].left].parent == (unsigned int) cmap->tlen);
   tree[tree[current].left].parent = current;
  }
  if (tree[current].right != EMPTY)
  {
   assert(tree[tree[current].right].parent == (unsigned int) cmap->tlen);
   tree[tree[current].right].parent = current;
  }
 }


 return replacement;
}
