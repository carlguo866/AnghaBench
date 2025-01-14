
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_7__ {int dist; int normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_8__ {size_t firstedge; int backarea; int planenum; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_9__ {size_t* v; } ;
typedef TYPE_3__ aas_edge_t ;
struct TYPE_10__ {size_t firstface; int numfaces; } ;
typedef TYPE_4__ aas_area_t ;
struct TYPE_11__ {int* faceindex; int* edgeindex; TYPE_1__* planes; TYPE_2__* faces; int * vertexes; TYPE_3__* edges; TYPE_4__* areas; } ;


 int AAS_FaceArea (TYPE_2__*) ;
 int DotProduct (int ,int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ aasworld ;
 size_t abs (int) ;

float AAS_AreaVolume(int areanum)
{
 int i, edgenum, facenum, side;
 vec_t d, a, volume;
 vec3_t corner;
 aas_plane_t *plane;
 aas_edge_t *edge;
 aas_face_t *face;
 aas_area_t *area;

 area = &aasworld.areas[areanum];
 facenum = aasworld.faceindex[area->firstface];
 face = &aasworld.faces[abs(facenum)];
 edgenum = aasworld.edgeindex[face->firstedge];
 edge = &aasworld.edges[abs(edgenum)];

 VectorCopy(aasworld.vertexes[edge->v[0]], corner);


 volume = 0;
 for (i = 0; i < area->numfaces; i++)
 {
  facenum = abs(aasworld.faceindex[area->firstface + i]);
  face = &aasworld.faces[facenum];
  side = face->backarea != areanum;
  plane = &aasworld.planes[face->planenum ^ side];
  d = -(DotProduct (corner, plane->normal) - plane->dist);
  a = AAS_FaceArea(face);
  volume += d * a;
 }

 volume /= 3;
 return volume;
}
