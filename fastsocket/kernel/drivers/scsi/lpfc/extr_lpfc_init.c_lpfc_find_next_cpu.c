
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_vector_map_info {scalar_t__ irq; scalar_t__ phys_id; } ;
struct TYPE_2__ {int num_present_cpu; struct lpfc_vector_map_info* cpu_map; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 scalar_t__ LPFC_VECTOR_MAP_EMPTY ;
 scalar_t__ cpu_online (int) ;
 scalar_t__* lpfc_used_cpu ;

__attribute__((used)) static int
lpfc_find_next_cpu(struct lpfc_hba *phba, uint32_t phys_id)
{
 struct lpfc_vector_map_info *cpup;
 int cpu;

 cpup = phba->sli4_hba.cpu_map;
 for (cpu = 0; cpu < phba->sli4_hba.num_present_cpu; cpu++) {

  if (cpu_online(cpu)) {
   if ((cpup->irq == LPFC_VECTOR_MAP_EMPTY) &&
       (lpfc_used_cpu[cpu] == LPFC_VECTOR_MAP_EMPTY) &&
       (cpup->phys_id == phys_id)) {
    return cpu;
   }
  }
  cpup++;
 }







 for (cpu = 0; cpu < phba->sli4_hba.num_present_cpu; cpu++) {
  if (lpfc_used_cpu[cpu] == phys_id)
   lpfc_used_cpu[cpu] = LPFC_VECTOR_MAP_EMPTY;
 }

 cpup = phba->sli4_hba.cpu_map;
 for (cpu = 0; cpu < phba->sli4_hba.num_present_cpu; cpu++) {

  if (cpu_online(cpu)) {
   if ((cpup->irq == LPFC_VECTOR_MAP_EMPTY) &&
       (cpup->phys_id == phys_id)) {
    return cpu;
   }
  }
  cpup++;
 }
 return LPFC_VECTOR_MAP_EMPTY;
}
