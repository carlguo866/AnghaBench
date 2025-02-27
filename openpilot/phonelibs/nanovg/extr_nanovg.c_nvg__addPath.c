
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cache; } ;
struct TYPE_8__ {int winding; int first; } ;
struct TYPE_7__ {int npaths; int cpaths; int npoints; TYPE_2__* paths; } ;
typedef TYPE_2__ NVGpath ;
typedef TYPE_3__ NVGcontext ;


 int NVG_CCW ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ realloc (TYPE_2__*,int) ;

__attribute__((used)) static void nvg__addPath(NVGcontext* ctx)
{
 NVGpath* path;
 if (ctx->cache->npaths+1 > ctx->cache->cpaths) {
  NVGpath* paths;
  int cpaths = ctx->cache->npaths+1 + ctx->cache->cpaths/2;
  paths = (NVGpath*)realloc(ctx->cache->paths, sizeof(NVGpath)*cpaths);
  if (paths == ((void*)0)) return;
  ctx->cache->paths = paths;
  ctx->cache->cpaths = cpaths;
 }
 path = &ctx->cache->paths[ctx->cache->npaths];
 memset(path, 0, sizeof(*path));
 path->first = ctx->cache->npoints;
 path->winding = NVG_CCW;

 ctx->cache->npaths++;
}
