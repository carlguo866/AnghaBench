
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; int** rr_data; scalar_t__ count; } ;


 int NSEC3_OPTOUT ;
 int log_assert (int ) ;

int
nsec3_has_optout(struct ub_packed_rrset_key* rrset, int r)
{
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
 log_assert(d && r < (int)d->count);
 if(d->rr_len[r] < 2+2)
  return 0;
 return (int)(d->rr_data[r][2+1] & NSEC3_OPTOUT);
}
