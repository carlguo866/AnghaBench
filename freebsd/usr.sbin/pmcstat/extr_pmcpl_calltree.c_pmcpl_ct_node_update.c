
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmcpl_ct_node {int pct_narc; struct pmcpl_ct_arc* pct_arc; int pct_arc_c; } ;
struct TYPE_3__ {unsigned int* sb; } ;
struct pmcpl_ct_arc {int pcta_call; struct pmcpl_ct_node* pcta_child; TYPE_1__ pcta_callid; TYPE_1__ pcta_samples; } ;
struct TYPE_4__ {int* sb; } ;


 int assert (int ) ;
 int pmcpl_ct_arc_grow (int,int *,struct pmcpl_ct_arc**) ;
 TYPE_2__ pmcpl_ct_callid ;
 int pmcpl_ct_samples_grow (TYPE_1__*) ;

__attribute__((used)) static void
pmcpl_ct_node_update(struct pmcpl_ct_node *parent,
    struct pmcpl_ct_node *child, int pmcin, unsigned v, int cd)
{
 struct pmcpl_ct_arc *arc;
 int i;

 assert(parent != ((void*)0));





 for (i = 0; i < parent->pct_narc; i++) {
  if (parent->pct_arc[i].pcta_child == child) {
   arc = &parent->pct_arc[i];
   pmcpl_ct_samples_grow(&arc->pcta_samples);
   arc->pcta_samples.sb[pmcin] += v;

   if (cd) {
   pmcpl_ct_samples_grow(&arc->pcta_callid);
   if (pmcpl_ct_callid.sb[pmcin] -
       arc->pcta_callid.sb[pmcin] > 1)
    arc->pcta_call++;
   arc->pcta_callid.sb[pmcin] =
       pmcpl_ct_callid.sb[pmcin];
   }
   return;
  }
 }




 pmcpl_ct_arc_grow(parent->pct_narc,
     &parent->pct_arc_c, &parent->pct_arc);
 arc = &parent->pct_arc[parent->pct_narc];
 pmcpl_ct_samples_grow(&arc->pcta_samples);
 arc->pcta_samples.sb[pmcin] = v;
 arc->pcta_call = 1;
 if (cd) {
  pmcpl_ct_samples_grow(&arc->pcta_callid);
  arc->pcta_callid.sb[pmcin] = pmcpl_ct_callid.sb[pmcin];
 }
 arc->pcta_child = child;
 parent->pct_narc++;
}
