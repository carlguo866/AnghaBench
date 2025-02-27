
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ surfaceType; int lodFixed; scalar_t__ lodRadius; scalar_t__* lodOrigin; int height; int width; int * heightLodError; TYPE_1__* verts; int * widthLodError; } ;
typedef TYPE_3__ srfGridMesh_t ;
struct TYPE_11__ {int numsurfaces; TYPE_2__* surfaces; } ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {scalar_t__* xyz; } ;


 scalar_t__ R_MergedHeightPoints (TYPE_3__*,int) ;
 scalar_t__ R_MergedWidthPoints (TYPE_3__*,int) ;
 scalar_t__ SF_GRID ;
 double fabs (scalar_t__) ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ s_worldData ;

void R_FixSharedVertexLodError_r( int start, srfGridMesh_t *grid1 ) {
 int j, k, l, m, n, offset1, offset2, touch;
 srfGridMesh_t *grid2;

 for ( j = start; j < s_worldData.numsurfaces; j++ ) {

  grid2 = (srfGridMesh_t *) s_worldData.surfaces[j].data;

  if ( grid2->surfaceType != SF_GRID ) continue;

  if ( grid2->lodFixed == 2 ) continue;

  if ( grid1->lodRadius != grid2->lodRadius ) continue;

  if ( grid1->lodOrigin[0] != grid2->lodOrigin[0] ) continue;
  if ( grid1->lodOrigin[1] != grid2->lodOrigin[1] ) continue;
  if ( grid1->lodOrigin[2] != grid2->lodOrigin[2] ) continue;

  touch = qfalse;
  for (n = 0; n < 2; n++) {

   if (n) offset1 = (grid1->height-1) * grid1->width;
   else offset1 = 0;
   if (R_MergedWidthPoints(grid1, offset1)) continue;
   for (k = 1; k < grid1->width-1; k++) {
    for (m = 0; m < 2; m++) {

     if (m) offset2 = (grid2->height-1) * grid2->width;
     else offset2 = 0;
     if (R_MergedWidthPoints(grid2, offset2)) continue;
     for ( l = 1; l < grid2->width-1; l++) {

      if ( fabs(grid1->verts[k + offset1].xyz[0] - grid2->verts[l + offset2].xyz[0]) > .1) continue;
      if ( fabs(grid1->verts[k + offset1].xyz[1] - grid2->verts[l + offset2].xyz[1]) > .1) continue;
      if ( fabs(grid1->verts[k + offset1].xyz[2] - grid2->verts[l + offset2].xyz[2]) > .1) continue;

      grid2->widthLodError[l] = grid1->widthLodError[k];
      touch = qtrue;
     }
    }
    for (m = 0; m < 2; m++) {

     if (m) offset2 = grid2->width-1;
     else offset2 = 0;
     if (R_MergedHeightPoints(grid2, offset2)) continue;
     for ( l = 1; l < grid2->height-1; l++) {

      if ( fabs(grid1->verts[k + offset1].xyz[0] - grid2->verts[grid2->width * l + offset2].xyz[0]) > .1) continue;
      if ( fabs(grid1->verts[k + offset1].xyz[1] - grid2->verts[grid2->width * l + offset2].xyz[1]) > .1) continue;
      if ( fabs(grid1->verts[k + offset1].xyz[2] - grid2->verts[grid2->width * l + offset2].xyz[2]) > .1) continue;

      grid2->heightLodError[l] = grid1->widthLodError[k];
      touch = qtrue;
     }
    }
   }
  }
  for (n = 0; n < 2; n++) {

   if (n) offset1 = grid1->width-1;
   else offset1 = 0;
   if (R_MergedHeightPoints(grid1, offset1)) continue;
   for (k = 1; k < grid1->height-1; k++) {
    for (m = 0; m < 2; m++) {

     if (m) offset2 = (grid2->height-1) * grid2->width;
     else offset2 = 0;
     if (R_MergedWidthPoints(grid2, offset2)) continue;
     for ( l = 1; l < grid2->width-1; l++) {

      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[0] - grid2->verts[l + offset2].xyz[0]) > .1) continue;
      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[1] - grid2->verts[l + offset2].xyz[1]) > .1) continue;
      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[2] - grid2->verts[l + offset2].xyz[2]) > .1) continue;

      grid2->widthLodError[l] = grid1->heightLodError[k];
      touch = qtrue;
     }
    }
    for (m = 0; m < 2; m++) {

     if (m) offset2 = grid2->width-1;
     else offset2 = 0;
     if (R_MergedHeightPoints(grid2, offset2)) continue;
     for ( l = 1; l < grid2->height-1; l++) {

      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[0] - grid2->verts[grid2->width * l + offset2].xyz[0]) > .1) continue;
      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[1] - grid2->verts[grid2->width * l + offset2].xyz[1]) > .1) continue;
      if ( fabs(grid1->verts[grid1->width * k + offset1].xyz[2] - grid2->verts[grid2->width * l + offset2].xyz[2]) > .1) continue;

      grid2->heightLodError[l] = grid1->heightLodError[k];
      touch = qtrue;
     }
    }
   }
  }
  if (touch) {
   grid2->lodFixed = 2;
   R_FixSharedVertexLodError_r ( start, grid2 );


  }
 }
}
