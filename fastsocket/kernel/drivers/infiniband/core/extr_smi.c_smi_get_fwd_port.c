
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int* initial_path; int hop_ptr; int* return_path; } ;


 int ib_get_smp_direction (struct ib_smp*) ;

int smi_get_fwd_port(struct ib_smp *smp)
{
 return (!ib_get_smp_direction(smp) ? smp->initial_path[smp->hop_ptr+1] :
  smp->return_path[smp->hop_ptr-1]);
}
