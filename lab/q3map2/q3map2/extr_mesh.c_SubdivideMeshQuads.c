
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_12__ {int width; int height; TYPE_2__* verts; } ;
typedef TYPE_1__ mesh_t ;
struct TYPE_13__ {int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;


 TYPE_1__* CopyMesh (TYPE_1__*) ;
 int Error (char*) ;
 int LerpDrawVertAmount (TYPE_2__*,TYPE_2__*,float,TYPE_2__*) ;
 int MAX_EXPANDED_AXIS ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;

mesh_t *SubdivideMeshQuads( mesh_t *in, float minLength, int maxsize, int *widthtable, int *heighttable ){
 int i, j, k, w, h, maxsubdivisions, subdivisions;
 vec3_t dir;
 float length, maxLength, amount;
 mesh_t out;
 bspDrawVert_t expand[MAX_EXPANDED_AXIS][MAX_EXPANDED_AXIS];

 out.width = in->width;
 out.height = in->height;

 for ( i = 0 ; i < in->width ; i++ ) {
  for ( j = 0 ; j < in->height ; j++ ) {
   expand[j][i] = in->verts[j * in->width + i];
  }
 }

 if ( maxsize > MAX_EXPANDED_AXIS ) {
  Error( "SubdivideMeshQuads: maxsize > MAX_EXPANDED_AXIS" );
 }



 maxsubdivisions = ( maxsize - in->width ) / ( in->width - 1 );

 for ( w = 0, j = 0 ; w < in->width - 1; w++, j += subdivisions + 1 ) {
  maxLength = 0;
  for ( i = 0 ; i < out.height ; i++ ) {
   VectorSubtract( expand[i][j + 1].xyz, expand[i][j].xyz, dir );
   length = VectorLength( dir );
   if ( length > maxLength ) {
    maxLength = length;
   }
  }

  subdivisions = (int) ( maxLength / minLength );
  if ( subdivisions > maxsubdivisions ) {
   subdivisions = maxsubdivisions;
  }

  widthtable[w] = subdivisions + 1;
  if ( subdivisions <= 0 ) {
   continue;
  }

  out.width += subdivisions;

  for ( i = 0 ; i < out.height ; i++ ) {
   for ( k = out.width - 1 ; k > j + subdivisions; k-- ) {
    expand[i][k] = expand[i][k - subdivisions];
   }
   for ( k = 1; k <= subdivisions; k++ )
   {
    amount = (float) k / ( subdivisions + 1 );
    LerpDrawVertAmount( &expand[i][j], &expand[i][j + subdivisions + 1], amount, &expand[i][j + k] );
   }
  }
 }

 maxsubdivisions = ( maxsize - in->height ) / ( in->height - 1 );

 for ( h = 0, j = 0 ; h < in->height - 1; h++, j += subdivisions + 1 ) {
  maxLength = 0;
  for ( i = 0 ; i < out.width ; i++ ) {
   VectorSubtract( expand[j + 1][i].xyz, expand[j][i].xyz, dir );
   length = VectorLength( dir );
   if ( length > maxLength ) {
    maxLength = length;
   }
  }

  subdivisions = (int) ( maxLength / minLength );
  if ( subdivisions > maxsubdivisions ) {
   subdivisions = maxsubdivisions;
  }

  heighttable[h] = subdivisions + 1;
  if ( subdivisions <= 0 ) {
   continue;
  }

  out.height += subdivisions;

  for ( i = 0 ; i < out.width ; i++ ) {
   for ( k = out.height - 1 ; k > j + subdivisions; k-- ) {
    expand[k][i] = expand[k - subdivisions][i];
   }
   for ( k = 1; k <= subdivisions; k++ )
   {
    amount = (float) k / ( subdivisions + 1 );
    LerpDrawVertAmount( &expand[j][i], &expand[j + subdivisions + 1][i], amount, &expand[j + k][i] );
   }
  }
 }


 out.verts = &expand[0][0];
 for ( i = 1 ; i < out.height ; i++ ) {
  memmove( &out.verts[i * out.width], expand[i], out.width * sizeof( bspDrawVert_t ) );
 }

 return CopyMesh( &out );
}
