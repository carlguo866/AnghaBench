
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_7__ {int normal; int dist; } ;
typedef TYPE_1__ hl_dplane_t ;
struct TYPE_8__ {size_t planenum; int numedges; int firstedge; scalar_t__ side; } ;
typedef TYPE_2__ hl_dface_t ;
struct TYPE_10__ {size_t* v; } ;
struct TYPE_9__ {int * point; } ;


 int ChopWindingInPlace (int **,int ,float,double) ;
 int * CopyWinding (int *) ;
 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int *) ;
 int FreeWinding (int *) ;
 int VectorNegate (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 float WindingArea (int *) ;
 size_t abs (int) ;
 TYPE_5__* hl_dedges ;
 int * hl_dplanes ;
 int* hl_dsurfedges ;
 TYPE_4__* hl_dvertexes ;
 int memcpy (TYPE_1__*,int *,int) ;

float HL_FaceOnWinding(hl_dface_t *face, winding_t *winding)
{
 int i, edgenum, side;
 float dist, area;
 hl_dplane_t plane;
 vec_t *v1, *v2;
 vec3_t normal, edgevec;
 winding_t *w;


 w = CopyWinding(winding);
 memcpy(&plane, &hl_dplanes[face->planenum], sizeof(hl_dplane_t));

 if (face->side)
 {
  VectorNegate(plane.normal, plane.normal);
  plane.dist = -plane.dist;
 }
 for (i = 0; i < face->numedges && w; i++)
 {

  edgenum = hl_dsurfedges[face->firstedge + i];
  side = edgenum > 0;

  v1 = hl_dvertexes[hl_dedges[abs(edgenum)].v[side]].point;
  v2 = hl_dvertexes[hl_dedges[abs(edgenum)].v[!side]].point;


  VectorSubtract(v1, v2, edgevec);
  CrossProduct(edgevec, plane.normal, normal);
  VectorNormalize(normal);
  dist = DotProduct(normal, v1);

  ChopWindingInPlace(&w, normal, dist, 0.9);
 }
 if (w)
 {
  area = WindingArea(w);
  FreeWinding(w);
  return area;
 }
 return 0;
}
