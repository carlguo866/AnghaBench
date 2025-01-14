
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int width; int height; int verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_19__ {int numVerts; scalar_t__ type; int patchWidth; int patchHeight; int* indexes; scalar_t__ numIndexes; int verts; TYPE_1__* shaderInfo; int longestCurve; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_17__ {int compileFlags; } ;


 TYPE_3__* AllocDrawSurface (scalar_t__) ;
 int C_SOLID ;
 int ClassifySurfaces (int,TYPE_3__*) ;
 int ClearSurface (TYPE_3__*) ;
 int FreeMesh (TYPE_2__*) ;
 int IterationsForCurve (int ,int ) ;
 int PutMeshOnCurve (TYPE_2__) ;
 TYPE_2__* RemoveLinearMeshColumnsRows (TYPE_2__*) ;
 scalar_t__ SURFACE_META ;
 scalar_t__ SURFACE_PATCH ;
 TYPE_2__* SubdivideMesh2 (TYPE_2__,int) ;
 int free (TYPE_2__*) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int numPatchMetaSurfaces ;
 scalar_t__ patchMeta ;
 int patchSubdivisions ;
 scalar_t__ qfalse ;
 int* safe_malloc (int) ;

void TriangulatePatchSurface( mapDrawSurface_t *ds ){
 int iterations, x, y, pw[ 5 ], r;
 mapDrawSurface_t *dsNew;
 mesh_t src, *subdivided, *mesh;



 if ( ds->numVerts == 0 || ds->type != SURFACE_PATCH || patchMeta == qfalse ) {
  return;
 }


 src.width = ds->patchWidth;
 src.height = ds->patchHeight;
 src.verts = ds->verts;

 iterations = IterationsForCurve( ds->longestCurve, patchSubdivisions );
 subdivided = SubdivideMesh2( src, iterations );


 PutMeshOnCurve( *subdivided );
 mesh = RemoveLinearMeshColumnsRows( subdivided );
 FreeMesh( subdivided );



 dsNew = AllocDrawSurface( SURFACE_META );
 memcpy( dsNew, ds, sizeof( *ds ) );


 if ( !( ds->shaderInfo->compileFlags & C_SOLID ) ) {
  ClearSurface( ds );
 }


 ds = dsNew;


 ds->type = SURFACE_META;
 ds->numIndexes = 0;
 ds->indexes = safe_malloc( mesh->width * mesh->height * 6 * sizeof( int ) );


 ds->numVerts = ( mesh->width * mesh->height );
 ds->verts = mesh->verts;


 for ( y = 0; y < ( mesh->height - 1 ); y++ )
 {
  for ( x = 0; x < ( mesh->width - 1 ); x++ )
  {

   pw[ 0 ] = x + ( y * mesh->width );
   pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
   pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
   pw[ 3 ] = x + 1 + ( y * mesh->width );
   pw[ 4 ] = x + ( y * mesh->width );


   r = ( x + y ) & 1;


   ds->indexes[ ds->numIndexes++ ] = pw[ r + 0 ];
   ds->indexes[ ds->numIndexes++ ] = pw[ r + 1 ];
   ds->indexes[ ds->numIndexes++ ] = pw[ r + 2 ];


   ds->indexes[ ds->numIndexes++ ] = pw[ r + 0 ];
   ds->indexes[ ds->numIndexes++ ] = pw[ r + 2 ];
   ds->indexes[ ds->numIndexes++ ] = pw[ r + 3 ];
  }
 }


 free( mesh );


 numPatchMetaSurfaces++;


 ClassifySurfaces( 1, ds );
}
