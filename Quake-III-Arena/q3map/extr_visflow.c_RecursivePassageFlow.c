
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {size_t leaf; scalar_t__ status; scalar_t__ portalflood; scalar_t__ portalvis; scalar_t__ removed; TYPE_5__* passages; } ;
typedef TYPE_2__ vportal_t ;
struct TYPE_14__ {TYPE_1__* base; } ;
typedef TYPE_3__ threaddata_t ;
struct TYPE_15__ {int* mightsee; struct TYPE_15__* next; scalar_t__ depth; } ;
typedef TYPE_4__ pstack_t ;
struct TYPE_16__ {scalar_t__ cansee; struct TYPE_16__* next; } ;
typedef TYPE_5__ passage_t ;
struct TYPE_17__ {int numportals; TYPE_2__** portals; } ;
typedef TYPE_6__ leaf_t ;
struct TYPE_12__ {int* portalvis; } ;


 TYPE_6__* leafs ;
 int memcpy (long*,long*,int ) ;
 int portalbytes ;
 int portallongs ;
 TYPE_2__* portals ;
 scalar_t__ stat_done ;

void RecursivePassageFlow (vportal_t *portal, threaddata_t *thread, pstack_t *prevstack)
{
 pstack_t stack;
 vportal_t *p;
 leaf_t *leaf;
 passage_t *passage, *nextpassage;
 int i, j;
 long *might, *vis, *prevmight, *cansee, *portalvis, more;
 int pnum;

 leaf = &leafs[portal->leaf];

 prevstack->next = &stack;

 stack.next = ((void*)0);
 stack.depth = prevstack->depth + 1;

 vis = (long *)thread->base->portalvis;

 passage = portal->passages;
 nextpassage = passage;

 for (i = 0; i < leaf->numportals; i++, passage = nextpassage)
 {
  p = leaf->portals[i];
  if ( p->removed ) {
   continue;
  }
  nextpassage = passage->next;
  pnum = p - portals;

  if ( ! (prevstack->mightsee[pnum >> 3] & (1<<(pnum&7)) ) ) {
   continue;
  }


  thread->base->portalvis[pnum>>3] |= (1<<(pnum&7));

  prevmight = (long *)prevstack->mightsee;
  cansee = (long *)passage->cansee;
  might = (long *)stack.mightsee;
  memcpy(might, prevmight, portalbytes);
  if (p->status == stat_done)
   portalvis = (long *) p->portalvis;
  else
   portalvis = (long *) p->portalflood;
  more = 0;
  for (j = 0; j < portallongs; j++)
  {
   if (*might)
   {
    *might &= *cansee++ & *portalvis++;
    more |= (*might & ~vis[j]);
   }
   else
   {
    cansee++;
    portalvis++;
   }
   might++;
  }

  if ( !more ) {

   continue;
  }


  RecursivePassageFlow(p, thread, &stack);

  stack.next = ((void*)0);
 }
}
