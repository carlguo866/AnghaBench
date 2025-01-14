
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ q1_dplane_t ;
struct TYPE_6__ {size_t planenum; int* children; } ;
typedef TYPE_2__ q1_dnode_t ;
typedef int q1_dleaf_t ;


 scalar_t__ DotProduct (int ,int ) ;
 int * q1_dleafs ;
 TYPE_2__* q1_dnodes ;
 TYPE_1__* q1_dplanes ;

q1_dleaf_t *Q1_PointInLeaf(int startnode, vec3_t point)
{
 int nodenum;
 vec_t dist;
 q1_dnode_t *node;
 q1_dplane_t *plane;

 nodenum = startnode;
 while (nodenum >= 0)
 {
  node = &q1_dnodes[nodenum];
  plane = &q1_dplanes[node->planenum];
  dist = DotProduct(point, plane->normal) - plane->dist;
  if (dist > 0)
   nodenum = node->children[0];
  else
   nodenum = node->children[1];
 }

 return &q1_dleafs[-nodenum - 1];
}
