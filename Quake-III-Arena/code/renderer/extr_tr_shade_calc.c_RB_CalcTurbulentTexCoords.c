
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float phase; float frequency; float amplitude; } ;
typedef TYPE_1__ waveForm_t ;
struct TYPE_7__ {float shaderTime; int numVertexes; double** xyz; } ;
struct TYPE_6__ {float* sinTable; } ;


 int FUNCTABLE_MASK ;
 double FUNCTABLE_SIZE ;
 TYPE_3__ tess ;
 TYPE_2__ tr ;

void RB_CalcTurbulentTexCoords( const waveForm_t *wf, float *st )
{
 int i;
 float now;

 now = ( wf->phase + tess.shaderTime * wf->frequency );

 for ( i = 0; i < tess.numVertexes; i++, st += 2 )
 {
  float s = st[0];
  float t = st[1];

  st[0] = s + tr.sinTable[ ( ( int ) ( ( ( tess.xyz[i][0] + tess.xyz[i][2] )* 1.0/128 * 0.125 + now ) * FUNCTABLE_SIZE ) ) & ( FUNCTABLE_MASK ) ] * wf->amplitude;
  st[1] = t + tr.sinTable[ ( ( int ) ( ( tess.xyz[i][1] * 1.0/128 * 0.125 + now ) * FUNCTABLE_SIZE ) ) & ( FUNCTABLE_MASK ) ] * wf->amplitude;
 }
}
