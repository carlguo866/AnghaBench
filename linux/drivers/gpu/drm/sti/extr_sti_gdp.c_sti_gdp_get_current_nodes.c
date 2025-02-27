
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_gdp_node_list {int btm_field_paddr; int top_field_paddr; } ;
struct sti_gdp {int plane; struct sti_gdp_node_list* node_list; scalar_t__ regs; } ;


 int DRM_DEBUG_DRIVER (char*,int,int ) ;
 scalar_t__ GAM_GDP_NVN_OFFSET ;
 unsigned int GDP_NODE_NB_BANK ;
 int readl (scalar_t__) ;
 int sti_plane_to_str (int *) ;

__attribute__((used)) static
struct sti_gdp_node_list *sti_gdp_get_current_nodes(struct sti_gdp *gdp)
{
 int hw_nvn;
 unsigned int i;

 hw_nvn = readl(gdp->regs + GAM_GDP_NVN_OFFSET);
 if (!hw_nvn)
  goto end;

 for (i = 0; i < GDP_NODE_NB_BANK; i++)
  if ((hw_nvn == gdp->node_list[i].btm_field_paddr) ||
    (hw_nvn == gdp->node_list[i].top_field_paddr))
   return &gdp->node_list[i];

end:
 DRM_DEBUG_DRIVER("Warning, NVN 0x%08X for %s does not match any node\n",
    hw_nvn, sti_plane_to_str(&gdp->plane));

 return ((void*)0);
}
