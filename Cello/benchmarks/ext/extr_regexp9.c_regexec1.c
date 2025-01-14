
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_20__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef scalar_t__ uchar ;
struct TYPE_30__ {scalar_t__ ep; } ;
struct TYPE_28__ {scalar_t__ sp; } ;
struct TYPE_37__ {TYPE_2__ e; TYPE_1__ s; } ;
struct TYPE_36__ {TYPE_13__* next; } ;
struct TYPE_35__ {scalar_t__ r; size_t subid; TYPE_13__* right; TYPE_6__* cp; } ;
struct TYPE_34__ {scalar_t__* spans; scalar_t__* end; } ;
struct TYPE_32__ {char* ep; } ;
struct TYPE_31__ {char* sp; } ;
struct TYPE_33__ {TYPE_4__ e; TYPE_3__ s; } ;
struct TYPE_29__ {TYPE_5__* m; } ;
struct TYPE_27__ {int type; TYPE_7__ u1; TYPE_8__ u2; } ;
struct TYPE_26__ {scalar_t__ inst; TYPE_20__ se; } ;
struct TYPE_25__ {int starttype; char* starts; char startchar; char* eol; TYPE_12__** reliste; TYPE_12__** relist; } ;
struct TYPE_24__ {int startinst; } ;
typedef scalar_t__ Rune ;
typedef TYPE_9__ Resub ;
typedef TYPE_10__ Reprog ;
typedef TYPE_11__ Reljunk ;
typedef TYPE_12__ Relist ;
typedef TYPE_13__ Reinst ;
 scalar_t__ Runeself ;
 int _renewemptythread (TYPE_12__*,int ,int,char*) ;
 int _renewmatch (TYPE_9__*,int,TYPE_20__*) ;
 TYPE_12__* _renewthread (TYPE_12__*,TYPE_13__*,int,TYPE_20__*) ;
 int chartorune (scalar_t__*,char*) ;
 char* utfrune (char*,char) ;

__attribute__((used)) static int
regexec1(const Reprog *progp,
 char *bol,
 Resub *mp,
 int ms,
 Reljunk *j
)
{
 int flag=0;
 Reinst *inst;
 Relist *tlp;
 char *s;
 int i, checkstart;
 Rune r, *rp, *ep;
 int n;
 Relist* tl;
 Relist* nl;
 Relist* tle;
 Relist* nle;
 int match;
 char *p;

 match = 0;
 checkstart = j->starttype;
 if(mp)
  for(i=0; i<ms; i++) {
   mp[i].s.sp = 0;
   mp[i].e.ep = 0;
  }
 j->relist[0][0].inst = 0;
 j->relist[1][0].inst = 0;


 s = j->starts;
 do{

  if(checkstart) {
   switch(j->starttype) {
   case 128:
    p = utfrune(s, j->startchar);
    if(p == 0 || s == j->eol)
     return match;
    s = p;
    break;
   case 136:
    if(s == bol)
     break;
    p = utfrune(s, '\n');
    if(p == 0 || s == j->eol)
     return match;
    s = p+1;
    break;
   }
  }
  r = *(uchar*)s;
  if(r < Runeself)
   n = 1;
  else
   n = chartorune(&r, s);


  tl = j->relist[flag];
  tle = j->reliste[flag];
  nl = j->relist[flag^=1];
  nle = j->reliste[flag];
  nl->inst = 0;


  if(match == 0)
   _renewemptythread(tl, progp->startinst, ms, s);


  for(tlp=tl; tlp->inst; tlp++){
   for(inst = tlp->inst; ; inst = inst->u2.next){
    switch(inst->type){
    case 128:
     if(inst->u1.r == r){
      if(_renewthread(nl, inst->u2.next, ms, &tlp->se)==nle)
       return -1;
     }
     break;
    case 132:
     tlp->se.m[inst->u1.subid].s.sp = s;
     continue;
    case 129:
     tlp->se.m[inst->u1.subid].e.ep = s;
     continue;
    case 138:
     if(r != '\n')
      if(_renewthread(nl, inst->u2.next, ms, &tlp->se)==nle)
       return -1;
     break;
    case 137:
     if(_renewthread(nl, inst->u2.next, ms, &tlp->se)==nle)
       return -1;
     break;
    case 136:
     if(s == bol || *(s-1) == '\n')
      continue;
     break;
    case 133:
     if(s == j->eol || r == 0 || r == '\n')
      continue;
     break;
    case 135:
     ep = inst->u1.cp->end;
     for(rp = inst->u1.cp->spans; rp < ep; rp += 2)
      if(r >= rp[0] && r <= rp[1]){
       if(_renewthread(nl, inst->u2.next, ms, &tlp->se)==nle)
        return -1;
       break;
      }
     break;
    case 131:
     ep = inst->u1.cp->end;
     for(rp = inst->u1.cp->spans; rp < ep; rp += 2)
      if(r >= rp[0] && r <= rp[1])
       break;
     if(rp == ep)
      if(_renewthread(nl, inst->u2.next, ms, &tlp->se)==nle)
       return -1;
     break;
    case 130:

     if(_renewthread(tlp, inst->u1.right, ms, &tlp->se) == tle)
      return -1;

     continue;
    case 134:
     match = 1;
     tlp->se.m[0].e.ep = s;
     if(mp != 0)
      _renewmatch(mp, ms, &tlp->se);
     break;
    }
    break;
   }
  }
  if(s == j->eol)
   break;
  checkstart = j->starttype && nl->inst==0;
  s += n;
 }while(r);
 return match;
}
