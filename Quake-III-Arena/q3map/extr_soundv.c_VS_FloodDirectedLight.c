
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int numpoints; int * points; } ;
typedef TYPE_3__ winding_t ;
struct TYPE_17__ {scalar_t__ atten_disttype; float photons; int normal; } ;
typedef TYPE_4__ vsound_t ;
typedef int vec3_t ;
struct TYPE_15__ {int normal; void* dist; } ;
struct TYPE_18__ {int numplanes; int surfaceNum; int cluster; int type; TYPE_2__ endplane; TYPE_2__ farplane; int * points; TYPE_1__* planes; } ;
typedef TYPE_5__ lightvolume_t ;
struct TYPE_19__ {int cluster; } ;
struct TYPE_14__ {int normal; void* dist; } ;


 int CrossProduct (int ,int ,int ) ;
 void* DotProduct (int ,int ) ;
 scalar_t__ LDAT_LINEAR ;
 scalar_t__ LDAT_NOSCALE ;
 float MAX_WORLD_COORD ;
 int VOLUME_DIRECTED ;
 int VS_R_CastLightAtSurface (TYPE_4__*,TYPE_5__*) ;
 int VS_R_FloodLight (TYPE_4__*,TYPE_5__*,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorInverse (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_7__* dleafs ;
 float lightLinearScale ;
 int memset (TYPE_5__*,int ,int) ;
 float sqrt (float) ;

void VS_FloodDirectedLight(vsound_t *light, winding_t *w, int leafnum)
{
 int i;
 float dist;
 lightvolume_t volume;
 vec3_t dir;

 if (light->atten_disttype == LDAT_NOSCALE)
 {

  dist = MAX_WORLD_COORD;
 }
 else
 {
  if ( light->atten_disttype == LDAT_LINEAR )
   dist = light->photons * lightLinearScale;
  else
   dist = sqrt(light->photons);
 }

 memset(&volume, 0, sizeof(lightvolume_t));
 for (i = 0; i < w->numpoints; i++)
 {
  VectorMA(w->points[i], dist, light->normal, volume.points[i]);
  VectorSubtract(w->points[(i+1)%w->numpoints], w->points[i], dir);
  CrossProduct(light->normal, dir, volume.planes[i].normal);
  VectorNormalize(volume.planes[i].normal, volume.planes[i].normal);
  volume.planes[i].dist = DotProduct(volume.planes[i].normal, w->points[i]);
 }
 volume.numplanes = w->numpoints;
 VectorCopy(light->normal, volume.endplane.normal);
 VectorInverse(volume.endplane.normal);
 volume.endplane.dist = DotProduct(volume.endplane.normal, volume.points[0]);
 volume.farplane = volume.endplane;
 volume.surfaceNum = -1;
 volume.type = VOLUME_DIRECTED;
 volume.cluster = dleafs[leafnum].cluster;
 VS_R_FloodLight(light, &volume, volume.cluster, 0);
 if (volume.surfaceNum >= 0)
 {
  VS_R_CastLightAtSurface(light, &volume);
 }
}
