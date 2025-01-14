
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {int dummy; } ;


 int arm_smmu_destroy_domain_context (struct iommu_domain*) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct arm_smmu_domain*) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static void arm_smmu_domain_free(struct iommu_domain *domain)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);





 iommu_put_dma_cookie(domain);
 arm_smmu_destroy_domain_context(domain);
 kfree(smmu_domain);
}
