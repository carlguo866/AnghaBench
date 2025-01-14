
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int lightdir; int color; int lightmap; int st; int tangent; int normal; int xyz; } ;
typedef TYPE_1__ srfVert_t ;
struct TYPE_8__ {int dlightBits; int pshadowBits; int width; float* widthLodError; int height; float* heightLodError; TYPE_1__* verts; int lodRadius; int lodOrigin; int indexes; int numIndexes; int numVerts; } ;
typedef TYPE_2__ srfBspSurface_t ;
typedef int int16_t ;
struct TYPE_10__ {int vertexAttribs; } ;
struct TYPE_9__ {int dlightBits; int pshadowBits; int numVertexes; int numIndexes; float** xyz; float** texCoords; float** lightCoords; int* indexes; TYPE_6__* shader; int ** lightdir; int ** color; int ** tangent; int ** normal; int cubemapIndex; int fogNum; int vao; } ;


 int ATTR_COLOR ;
 int ATTR_LIGHTCOORD ;
 int ATTR_LIGHTDIRECTION ;
 int ATTR_NORMAL ;
 int ATTR_POSITION ;
 int ATTR_TANGENT ;
 int ATTR_TEXCOORD ;
 float LodErrorForVolume (int ,int ) ;
 int MAX_GRID_SIZE ;
 int RB_BeginSurface (TYPE_6__*,int ,int ) ;
 int RB_CheckVao (int ) ;
 int RB_EndSurface () ;
 scalar_t__ RB_SurfaceVaoCached (int ,TYPE_1__*,int ,int ,int,int) ;
 int SHADER_MAX_INDEXES ;
 int SHADER_MAX_VERTEXES ;
 int VectorCopy (int ,float*) ;
 int VectorCopy2 (int ,float*) ;
 int VectorCopy4 (int ,int *) ;
 TYPE_3__ tess ;

__attribute__((used)) static void RB_SurfaceGrid( srfBspSurface_t *srf ) {
 int i, j;
 float *xyz;
 float *texCoords, *lightCoords;
 int16_t *normal;
 int16_t *tangent;
 uint16_t *color;
 int16_t *lightdir;
 srfVert_t *dv;
 int rows, irows, vrows;
 int used;
 int widthTable[MAX_GRID_SIZE];
 int heightTable[MAX_GRID_SIZE];
 float lodError;
 int lodWidth, lodHeight;
 int numVertexes;
 int dlightBits;
 int pshadowBits;


 if (RB_SurfaceVaoCached(srf->numVerts, srf->verts, srf->numIndexes,
  srf->indexes, srf->dlightBits, srf->pshadowBits))
 {
  return;
 }

 RB_CheckVao(tess.vao);

 dlightBits = srf->dlightBits;
 tess.dlightBits |= dlightBits;

 pshadowBits = srf->pshadowBits;
 tess.pshadowBits |= pshadowBits;


 lodError = LodErrorForVolume( srf->lodOrigin, srf->lodRadius );



 widthTable[0] = 0;
 lodWidth = 1;
 for ( i = 1 ; i < srf->width-1 ; i++ ) {
  if ( srf->widthLodError[i] <= lodError ) {
   widthTable[lodWidth] = i;
   lodWidth++;
  }
 }
 widthTable[lodWidth] = srf->width-1;
 lodWidth++;

 heightTable[0] = 0;
 lodHeight = 1;
 for ( i = 1 ; i < srf->height-1 ; i++ ) {
  if ( srf->heightLodError[i] <= lodError ) {
   heightTable[lodHeight] = i;
   lodHeight++;
  }
 }
 heightTable[lodHeight] = srf->height-1;
 lodHeight++;





 used = 0;
 while ( used < lodHeight - 1 ) {

  do {
   vrows = ( SHADER_MAX_VERTEXES - tess.numVertexes ) / lodWidth;
   irows = ( SHADER_MAX_INDEXES - tess.numIndexes ) / ( lodWidth * 6 );


   if ( vrows < 2 || irows < 1 ) {
    RB_EndSurface();
    RB_BeginSurface(tess.shader, tess.fogNum, tess.cubemapIndex );
   } else {
    break;
   }
  } while ( 1 );

  rows = irows;
  if ( vrows < irows + 1 ) {
   rows = vrows - 1;
  }
  if ( used + rows > lodHeight ) {
   rows = lodHeight - used;
  }

  numVertexes = tess.numVertexes;

  xyz = tess.xyz[numVertexes];
  normal = tess.normal[numVertexes];
  tangent = tess.tangent[numVertexes];
  texCoords = tess.texCoords[numVertexes];
  lightCoords = tess.lightCoords[numVertexes];
  color = tess.color[numVertexes];
  lightdir = tess.lightdir[numVertexes];


  for ( i = 0 ; i < rows ; i++ ) {
   for ( j = 0 ; j < lodWidth ; j++ ) {
    dv = srf->verts + heightTable[ used + i ] * srf->width
     + widthTable[ j ];

    if ( tess.shader->vertexAttribs & ATTR_POSITION )
    {
     VectorCopy(dv->xyz, xyz);
     xyz += 4;
    }

    if ( tess.shader->vertexAttribs & ATTR_NORMAL )
    {
     VectorCopy4(dv->normal, normal);
     normal += 4;
    }

    if ( tess.shader->vertexAttribs & ATTR_TANGENT )
    {
     VectorCopy4(dv->tangent, tangent);
     tangent += 4;
    }

    if ( tess.shader->vertexAttribs & ATTR_TEXCOORD )
    {
     VectorCopy2(dv->st, texCoords);
     texCoords += 2;
    }

    if ( tess.shader->vertexAttribs & ATTR_LIGHTCOORD )
    {
     VectorCopy2(dv->lightmap, lightCoords);
     lightCoords += 2;
    }

    if ( tess.shader->vertexAttribs & ATTR_COLOR )
    {
     VectorCopy4(dv->color, color);
     color += 4;
    }

    if ( tess.shader->vertexAttribs & ATTR_LIGHTDIRECTION )
    {
     VectorCopy4(dv->lightdir, lightdir);
     lightdir += 4;
    }


   }
  }



  {
   int numIndexes;
   int w, h;

   h = rows - 1;
   w = lodWidth - 1;
   numIndexes = tess.numIndexes;
   for (i = 0 ; i < h ; i++) {
    for (j = 0 ; j < w ; j++) {
     int v1, v2, v3, v4;


     v1 = numVertexes + i*lodWidth + j + 1;
     v2 = v1 - 1;
     v3 = v2 + lodWidth;
     v4 = v3 + 1;

     tess.indexes[numIndexes] = v2;
     tess.indexes[numIndexes+1] = v3;
     tess.indexes[numIndexes+2] = v1;

     tess.indexes[numIndexes+3] = v1;
     tess.indexes[numIndexes+4] = v3;
     tess.indexes[numIndexes+5] = v4;
     numIndexes += 6;
    }
   }

   tess.numIndexes = numIndexes;
  }

  tess.numVertexes += rows * lodWidth;

  used += rows - 1;
 }
}
