
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct aa_profile {int dummy; } ;
struct aa_label {int dummy; } ;
struct TYPE_5__ {int cap; } ;
struct TYPE_6__ {TYPE_1__ u; } ;


 int DEFINE_AUDIT_DATA (TYPE_2__,int ,int ) ;
 int LSM_AUDIT_DATA_CAP ;
 int OP_CAPABLE ;
 int fn_for_each_confined (struct aa_label*,struct aa_profile*,int ) ;
 int profile_capable (struct aa_profile*,int,unsigned int,TYPE_2__*) ;
 TYPE_2__ sa ;

int aa_capable(struct aa_label *label, int cap, unsigned int opts)
{
 struct aa_profile *profile;
 int error = 0;
 DEFINE_AUDIT_DATA(sa, LSM_AUDIT_DATA_CAP, OP_CAPABLE);

 sa.u.cap = cap;
 error = fn_for_each_confined(label, profile,
   profile_capable(profile, cap, opts, &sa));

 return error;
}
