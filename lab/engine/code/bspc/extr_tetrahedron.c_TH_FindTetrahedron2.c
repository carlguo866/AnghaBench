
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* edges; size_t planenum; } ;
typedef TYPE_3__ th_triangle_t ;
struct TYPE_10__ {float dist; int normal; } ;
typedef TYPE_4__ th_plane_t ;
struct TYPE_11__ {int numvertexes; TYPE_3__* triangles; TYPE_2__* vertexes; TYPE_4__* planes; TYPE_1__* edges; } ;
struct TYPE_8__ {int v; int usercount; } ;
struct TYPE_7__ {int* v; } ;


 float DotProduct (int ,int ) ;
 int TH_CreateTriangle (int*) ;
 int TH_FindTriangle (int*) ;
 int TH_TryEdge (int,int) ;
 int TH_TryTriangle (int*) ;
 size_t abs (int) ;
 int fabs (float) ;
 TYPE_5__ thworld ;

int TH_FindTetrahedron2(th_triangle_t *tri, int *triangles)
{
 int i, edgenum, v1, verts[3], triverts[3];
 float d;
 th_plane_t *plane;


 for (i = 0; i < 3; i++)
 {
  edgenum = tri->edges[i];
  if (edgenum < 0) verts[i] = thworld.edges[abs(edgenum)].v[1];
  else verts[i] = thworld.edges[edgenum].v[0];
 }

 plane = &thworld.planes[tri->planenum];
 for (v1 = 0; v1 < thworld.numvertexes; v1++)
 {

  if (!thworld.vertexes[v1].usercount) continue;

  d = DotProduct(thworld.vertexes[v1].v, plane->normal) - plane->dist;
  if (fabs(d) < 1) continue;

  for (i = 0; i < 3; i++)
  {
   if (v1 == verts[i]) break;
   if (!TH_TryEdge(v1, verts[i])) break;
  }
  if (i < 3) continue;

  for (i = 0; i < 3; i++)
  {
   triverts[0] = v1;
   triverts[1] = verts[i];
   triverts[2] = verts[(i+1)%3];

   triangles[i] = TH_FindTriangle(triverts);
   if (!triangles[i])
   {
    if (!TH_TryTriangle(triverts)) break;
   }
  }
  if (i < 3) continue;

  for (i = 0; i < 3; i++)
  {
   if (!triangles[i])
   {
    triverts[0] = v1;
    triverts[1] = verts[i];
    triverts[2] = verts[(i+1)%3];
    triangles[i] = TH_CreateTriangle(triverts);
   }
  }

  triangles[3] = tri - thworld.triangles;

  return 1;
 }
 return 0;
}
