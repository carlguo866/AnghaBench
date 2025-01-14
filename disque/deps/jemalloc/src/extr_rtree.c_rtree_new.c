
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int height; int * start_level; TYPE_1__* levels; int * dalloc; int * alloc; } ;
typedef TYPE_2__ rtree_t ;
typedef int rtree_node_dalloc_t ;
typedef int rtree_node_alloc_t ;
struct TYPE_4__ {unsigned int bits; unsigned int cumbits; int * subtree; } ;


 unsigned int RTREE_BITS_PER_LEVEL ;
 unsigned int RTREE_HEIGHT_MAX ;
 int assert (int) ;
 int hmin (unsigned int,unsigned int) ;

bool
rtree_new(rtree_t *rtree, unsigned bits, rtree_node_alloc_t *alloc,
    rtree_node_dalloc_t *dalloc)
{
 unsigned bits_in_leaf, height, i;

 assert(bits > 0 && bits <= (sizeof(uintptr_t) << 3));

 bits_in_leaf = (bits % RTREE_BITS_PER_LEVEL) == 0 ? RTREE_BITS_PER_LEVEL
     : (bits % RTREE_BITS_PER_LEVEL);
 if (bits > bits_in_leaf) {
  height = 1 + (bits - bits_in_leaf) / RTREE_BITS_PER_LEVEL;
  if ((height-1) * RTREE_BITS_PER_LEVEL + bits_in_leaf != bits)
   height++;
 } else
  height = 1;
 assert((height-1) * RTREE_BITS_PER_LEVEL + bits_in_leaf == bits);

 rtree->alloc = alloc;
 rtree->dalloc = dalloc;
 rtree->height = height;


 rtree->levels[0].subtree = ((void*)0);
 rtree->levels[0].bits = (height > 1) ? RTREE_BITS_PER_LEVEL :
     bits_in_leaf;
 rtree->levels[0].cumbits = rtree->levels[0].bits;

 for (i = 1; i < height-1; i++) {
  rtree->levels[i].subtree = ((void*)0);
  rtree->levels[i].bits = RTREE_BITS_PER_LEVEL;
  rtree->levels[i].cumbits = rtree->levels[i-1].cumbits +
      RTREE_BITS_PER_LEVEL;
 }

 if (height > 1) {
  rtree->levels[height-1].subtree = ((void*)0);
  rtree->levels[height-1].bits = bits_in_leaf;
  rtree->levels[height-1].cumbits = bits;
 }


 for (i = 0; i < RTREE_HEIGHT_MAX; i++) {
  rtree->start_level[i] = hmin(RTREE_HEIGHT_MAX - 1 - i, height -
      1);
 }

 return (0);
}
