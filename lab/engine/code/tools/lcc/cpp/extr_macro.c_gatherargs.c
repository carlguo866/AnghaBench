
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* lp; TYPE_2__* tp; TYPE_2__* bp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_2__ Token ;


 scalar_t__ COMMA ;
 scalar_t__ DSHARP ;
 scalar_t__ DSHARP1 ;
 scalar_t__ END ;
 int ERROR ;
 int FATAL ;
 scalar_t__ LP ;
 int NARG ;
 scalar_t__ NL ;
 scalar_t__ RP ;
 int adjustrow (TYPE_1__*,int) ;
 int error (int ,char*) ;
 int gettokens (TYPE_1__*,int ) ;
 int makespace (TYPE_1__*) ;
 TYPE_1__* normtokenrow (TYPE_1__*) ;

int
gatherargs(Tokenrow *trp, Tokenrow **atr, int *narg)
{
 int parens = 1;
 int ntok = 0;
 Token *bp, *lp;
 Tokenrow ttr;
 int ntokp;
 int needspace;

 *narg = -1;

 for (;;) {
  trp->tp++;
  ntok++;
  if (trp->tp >= trp->lp) {
   gettokens(trp, 0);
   if ((trp->lp-1)->type==END) {
    trp->lp -= 1;
    trp->tp -= ntok;
    return ntok;
   }
  }
  if (trp->tp->type==LP)
   break;
  if (trp->tp->type!=NL)
   return ntok;
 }
 *narg = 0;
 ntok++;
 ntokp = ntok;
 trp->tp++;

 needspace = 0;
 while (parens>0) {
  if (trp->tp >= trp->lp)
   gettokens(trp, 0);
  if (needspace) {
   needspace = 0;
   makespace(trp);
  }
  if (trp->tp->type==END) {
   trp->lp -= 1;
   trp->tp -= ntok;
   error(ERROR, "EOF in macro arglist");
   return ntok;
  }
  if (trp->tp->type==NL) {
   trp->tp += 1;
   adjustrow(trp, -1);
   trp->tp -= 1;
   makespace(trp);
   needspace = 1;
   continue;
  }
  if (trp->tp->type==LP)
   parens++;
  else if (trp->tp->type==RP)
   parens--;
  trp->tp++;
  ntok++;
 }
 trp->tp -= ntok;

 lp = bp = trp->tp+ntokp;
 for (; parens>=0; lp++) {
  if (lp->type == LP) {
   parens++;
   continue;
  }
  if (lp->type==RP)
   parens--;
  if (lp->type==DSHARP)
   lp->type = DSHARP1;
  if ((lp->type==COMMA && parens==0) || (parens<0 && (lp-1)->type!=LP)) {
   if (*narg>=NARG-1)
    error(FATAL, "Sorry, too many macro arguments");
   ttr.bp = ttr.tp = bp;
   ttr.lp = lp;
   atr[(*narg)++] = normtokenrow(&ttr);
   bp = lp+1;
  }
 }
 return ntok;
}
