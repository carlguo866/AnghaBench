
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lastTouched; } ;
typedef TYPE_1__ idle_timer ;
struct TYPE_9__ {TYPE_3__* opaque; } ;
typedef TYPE_2__ evTimerID ;
struct TYPE_10__ {TYPE_1__* uap; } ;
typedef TYPE_3__ evTimer ;
struct TYPE_11__ {int lastEventTime; } ;
typedef TYPE_4__ evContext_p ;
struct TYPE_12__ {TYPE_4__* opaque; } ;
typedef TYPE_5__ evContext ;



int
evTouchIdleTimer(evContext opaqueCtx, evTimerID id) {
 evContext_p *ctx = opaqueCtx.opaque;
 evTimer *t = id.opaque;
 idle_timer *tt = t->uap;

 tt->lastTouched = ctx->lastEventTime;

 return (0);
}
