
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {int flags; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int DOMAIN_BUS_FSL_MC_MSI ;
 int MSI_FLAG_LEVEL_CAPABLE ;
 int MSI_FLAG_USE_DEF_CHIP_OPS ;
 int MSI_FLAG_USE_DEF_DOM_OPS ;
 scalar_t__ WARN_ON (int) ;
 int fsl_mc_msi_update_chip_ops (struct msi_domain_info*) ;
 int fsl_mc_msi_update_dom_ops (struct msi_domain_info*) ;
 int irq_domain_update_bus_token (struct irq_domain*,int ) ;
 struct irq_domain* msi_create_irq_domain (struct fwnode_handle*,struct msi_domain_info*,struct irq_domain*) ;

struct irq_domain *fsl_mc_msi_create_irq_domain(struct fwnode_handle *fwnode,
      struct msi_domain_info *info,
      struct irq_domain *parent)
{
 struct irq_domain *domain;

 if (WARN_ON((info->flags & MSI_FLAG_LEVEL_CAPABLE)))
  info->flags &= ~MSI_FLAG_LEVEL_CAPABLE;
 if (info->flags & MSI_FLAG_USE_DEF_DOM_OPS)
  fsl_mc_msi_update_dom_ops(info);
 if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
  fsl_mc_msi_update_chip_ops(info);

 domain = msi_create_irq_domain(fwnode, info, parent);
 if (domain)
  irq_domain_update_bus_token(domain, DOMAIN_BUS_FSL_MC_MSI);

 return domain;
}
