
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int s; int t; } ;
typedef TYPE_1__ TESSvertex ;
typedef int TESSreal ;


 scalar_t__ VertLeq (TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;

TESSreal tesedgeEval( TESSvertex *u, TESSvertex *v, TESSvertex *w )
{
 TESSreal gapL, gapR;

 assert( VertLeq( u, v ) && VertLeq( v, w ));

 gapL = v->s - u->s;
 gapR = w->s - v->s;

 if( gapL + gapR > 0 ) {
  if( gapL < gapR ) {
   return (v->t - u->t) + (u->t - w->t) * (gapL / (gapL + gapR));
  } else {
   return (v->t - w->t) + (w->t - u->t) * (gapR / (gapL + gapR));
  }
 }

 return 0;
}
