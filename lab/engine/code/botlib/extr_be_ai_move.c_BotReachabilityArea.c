
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int fraction; scalar_t__ ent; int startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_8__ {int* endpos; int startsolid; } ;
typedef TYPE_2__ aas_trace_t ;
struct TYPE_9__ {int areanum; } ;
typedef TYPE_3__ aas_reachability_t ;


 scalar_t__ AAS_AreaReachability (int) ;
 int AAS_EntityModelindex (scalar_t__) ;
 int AAS_NextModelReachability (int ,int) ;
 int AAS_PresenceTypeBoundingBox (int ,int*,int*) ;
 int AAS_ReachabilityFromNum (int,TYPE_3__*) ;
 scalar_t__ AAS_Swimming (int*) ;
 TYPE_1__ AAS_Trace (int*,int*,int*,int*,int,int) ;
 TYPE_2__ AAS_TraceClientBBox (int*,int*,int ,int) ;
 int BotFuzzyPointReachabilityArea (int*) ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 scalar_t__ ENTITYNUM_NONE ;
 scalar_t__ ENTITYNUM_WORLD ;
 int MODELTYPE_FUNC_BOB ;
 int MODELTYPE_FUNC_PLAT ;
 int PRESENCE_CROUCH ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int* modeltypes ;

int BotReachabilityArea(vec3_t origin, int client)
{
 int modelnum, modeltype, reachnum, areanum;
 aas_reachability_t reach;
 vec3_t org, end, mins, maxs, up = {0, 0, 1};
 bsp_trace_t bsptrace;
 aas_trace_t trace;


 AAS_PresenceTypeBoundingBox(PRESENCE_CROUCH, mins, maxs);
 VectorMA(origin, -3, up, end);
 bsptrace = AAS_Trace(origin, mins, maxs, end, client, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
 if (!bsptrace.startsolid && bsptrace.fraction < 1 && bsptrace.ent != ENTITYNUM_NONE)
 {

  if (bsptrace.ent == ENTITYNUM_WORLD)
  {
   return BotFuzzyPointReachabilityArea(origin);
  }

  modelnum = AAS_EntityModelindex(bsptrace.ent);
  modeltype = modeltypes[modelnum];



  if (modeltype == MODELTYPE_FUNC_PLAT || modeltype == MODELTYPE_FUNC_BOB)
  {
   reachnum = AAS_NextModelReachability(0, modelnum);
   if (reachnum)
   {
    AAS_ReachabilityFromNum(reachnum, &reach);
    return reach.areanum;
   }
  }


  if (AAS_Swimming(origin))
  {
   return BotFuzzyPointReachabilityArea(origin);
  }

  areanum = BotFuzzyPointReachabilityArea(origin);

  if (areanum && AAS_AreaReachability(areanum)) return areanum;

  VectorCopy(origin, org);
  VectorCopy(org, end);
  end[2] -= 800;
  trace = AAS_TraceClientBBox(org, end, PRESENCE_CROUCH, -1);
  if (!trace.startsolid)
  {
   VectorCopy(trace.endpos, org);
  }

  return BotFuzzyPointReachabilityArea(org);
 }

 return BotFuzzyPointReachabilityArea(origin);
}
