
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {scalar_t__ prec; scalar_t__ assoc; } ;
struct TYPE_4__ {TYPE_1__* rp; } ;
struct action {scalar_t__ type; TYPE_2__ x; struct symbol* sp; } ;
struct TYPE_3__ {struct symbol* precsym; } ;


 scalar_t__ ERROR ;
 scalar_t__ LEFT ;
 scalar_t__ NONE ;
 scalar_t__ RD_RESOLVED ;
 scalar_t__ REDUCE ;
 scalar_t__ RIGHT ;
 scalar_t__ RRCONFLICT ;
 scalar_t__ SHIFT ;
 scalar_t__ SH_RESOLVED ;
 scalar_t__ SRCONFLICT ;
 scalar_t__ SSCONFLICT ;
 int assert (int) ;

__attribute__((used)) static int resolve_conflict(
  struct action *apx,
  struct action *apy
){
  struct symbol *spx, *spy;
  int errcnt = 0;
  assert( apx->sp==apy->sp );
  if( apx->type==SHIFT && apy->type==SHIFT ){
    apy->type = SSCONFLICT;
    errcnt++;
  }
  if( apx->type==SHIFT && apy->type==REDUCE ){
    spx = apx->sp;
    spy = apy->x.rp->precsym;
    if( spy==0 || spx->prec<0 || spy->prec<0 ){

      apy->type = SRCONFLICT;
      errcnt++;
    }else if( spx->prec>spy->prec ){
      apy->type = RD_RESOLVED;
    }else if( spx->prec<spy->prec ){
      apx->type = SH_RESOLVED;
    }else if( spx->prec==spy->prec && spx->assoc==RIGHT ){
      apy->type = RD_RESOLVED;
    }else if( spx->prec==spy->prec && spx->assoc==LEFT ){
      apx->type = SH_RESOLVED;
    }else{
      assert( spx->prec==spy->prec && spx->assoc==NONE );
      apx->type = ERROR;
    }
  }else if( apx->type==REDUCE && apy->type==REDUCE ){
    spx = apx->x.rp->precsym;
    spy = apy->x.rp->precsym;
    if( spx==0 || spy==0 || spx->prec<0 ||
    spy->prec<0 || spx->prec==spy->prec ){
      apy->type = RRCONFLICT;
      errcnt++;
    }else if( spx->prec>spy->prec ){
      apy->type = RD_RESOLVED;
    }else if( spx->prec<spy->prec ){
      apx->type = RD_RESOLVED;
    }
  }else{
    assert(
      apx->type==SH_RESOLVED ||
      apx->type==RD_RESOLVED ||
      apx->type==SSCONFLICT ||
      apx->type==SRCONFLICT ||
      apx->type==RRCONFLICT ||
      apy->type==SH_RESOLVED ||
      apy->type==RD_RESOLVED ||
      apy->type==SSCONFLICT ||
      apy->type==SRCONFLICT ||
      apy->type==RRCONFLICT
    );



  }
  return errcnt;
}
