
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_drconf_cell_v2 {void* flags; void* aa_index; void* drc_index; int base_addr; } ;
struct drmem_lmb {int aa_index; int drc_index; int base_addr; } ;


 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int drmem_lmb_flags (struct drmem_lmb*) ;

__attribute__((used)) static void init_drconf_v2_cell(struct of_drconf_cell_v2 *dr_cell,
    struct drmem_lmb *lmb)
{
 dr_cell->base_addr = cpu_to_be64(lmb->base_addr);
 dr_cell->drc_index = cpu_to_be32(lmb->drc_index);
 dr_cell->aa_index = cpu_to_be32(lmb->aa_index);
 dr_cell->flags = cpu_to_be32(drmem_lmb_flags(lmb));
}
