
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int level; TYPE_1__* capture; int L; } ;
struct TYPE_5__ {char const* init; int len; } ;
typedef TYPE_2__ MatchState ;


 int luaL_error (int ,char*) ;
 char* match (TYPE_2__*,char const*,char const*) ;

__attribute__((used)) static const char*start_capture(MatchState*ms,const char*s,
const char*p,int what){
const char*res;
int level=ms->level;
if(level>=32)luaL_error(ms->L,"too many captures");
ms->capture[level].init=s;
ms->capture[level].len=what;
ms->level=level+1;
if((res=match(ms,s,p))==((void*)0))
ms->level--;
return res;
}
