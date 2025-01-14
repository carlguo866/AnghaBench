
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double vec_t ;
typedef int vec3_t ;
struct TYPE_6__ {double dist; int normal; } ;
typedef TYPE_1__ bspPlane_t ;
struct TYPE_7__ {size_t planeNum; int* children; } ;
typedef TYPE_2__ bspNode_t ;
struct TYPE_8__ {int cluster; } ;


 double DotProduct (int ,int ) ;
 TYPE_5__* bspLeafs ;
 TYPE_2__* bspNodes ;
 TYPE_1__* bspPlanes ;

int PointInLeafNum_r( vec3_t point, int nodenum ){
 int leafnum;
 vec_t dist;
 bspNode_t *node;
 bspPlane_t *plane;


 while ( nodenum >= 0 )
 {
  node = &bspNodes[ nodenum ];
  plane = &bspPlanes[ node->planeNum ];
  dist = DotProduct( point, plane->normal ) - plane->dist;
  if ( dist > 0.1 ) {
   nodenum = node->children[ 0 ];
  }
  else if ( dist < -0.1 ) {
   nodenum = node->children[ 1 ];
  }
  else
  {
   leafnum = PointInLeafNum_r( point, node->children[ 0 ] );
   if ( bspLeafs[ leafnum ].cluster != -1 ) {
    return leafnum;
   }
   nodenum = node->children[ 1 ];
  }
 }

 leafnum = -nodenum - 1;
 return leafnum;
}
