
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int rev_input_given; } ;
struct all_refs_cb {unsigned int all_flags; int * wt; struct rev_info* all_revs; } ;



__attribute__((used)) static void init_all_refs_cb(struct all_refs_cb *cb, struct rev_info *revs,
 unsigned flags)
{
 cb->all_revs = revs;
 cb->all_flags = flags;
 revs->rev_input_given = 1;
 cb->wt = ((void*)0);
}
