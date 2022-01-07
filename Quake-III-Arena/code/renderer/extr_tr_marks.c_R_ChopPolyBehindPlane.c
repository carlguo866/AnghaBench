
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 int Com_Memcpy (float**,float**,int) ;
 float DotProduct (float*,float*) ;
 int MAX_VERTS_ON_POLY ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VectorCopy (float*,float*) ;

__attribute__((used)) static void R_ChopPolyBehindPlane( int numInPoints, vec3_t inPoints[MAX_VERTS_ON_POLY],
           int *numOutPoints, vec3_t outPoints[MAX_VERTS_ON_POLY],
       vec3_t normal, vec_t dist, vec_t epsilon) {
 float dists[MAX_VERTS_ON_POLY+4];
 int sides[MAX_VERTS_ON_POLY+4];
 int counts[3];
 float dot;
 int i, j;
 float *p1, *p2, *clip;
 float d;


 if ( numInPoints >= MAX_VERTS_ON_POLY - 2 ) {
  *numOutPoints = 0;
  return;
 }

 counts[0] = counts[1] = counts[2] = 0;


 for ( i = 0 ; i < numInPoints ; i++ ) {
  dot = DotProduct( inPoints[i], normal );
  dot -= dist;
  dists[i] = dot;
  if ( dot > epsilon ) {
   sides[i] = SIDE_FRONT;
  } else if ( dot < -epsilon ) {
   sides[i] = SIDE_BACK;
  } else {
   sides[i] = SIDE_ON;
  }
  counts[sides[i]]++;
 }
 sides[i] = sides[0];
 dists[i] = dists[0];

 *numOutPoints = 0;

 if ( !counts[0] ) {
  return;
 }
 if ( !counts[1] ) {
  *numOutPoints = numInPoints;
  Com_Memcpy( outPoints, inPoints, numInPoints * sizeof(vec3_t) );
  return;
 }

 for ( i = 0 ; i < numInPoints ; i++ ) {
  p1 = inPoints[i];
  clip = outPoints[ *numOutPoints ];

  if ( sides[i] == SIDE_ON ) {
   VectorCopy( p1, clip );
   (*numOutPoints)++;
   continue;
  }

  if ( sides[i] == SIDE_FRONT ) {
   VectorCopy( p1, clip );
   (*numOutPoints)++;
   clip = outPoints[ *numOutPoints ];
  }

  if ( sides[i+1] == SIDE_ON || sides[i+1] == sides[i] ) {
   continue;
  }


  p2 = inPoints[ (i+1) % numInPoints ];

  d = dists[i] - dists[i+1];
  if ( d == 0 ) {
   dot = 0;
  } else {
   dot = dists[i] / d;
  }



  for (j=0 ; j<3 ; j++) {
   clip[j] = p1[j] + dot * ( p2[j] - p1[j] );
  }

  (*numOutPoints)++;
 }
}
