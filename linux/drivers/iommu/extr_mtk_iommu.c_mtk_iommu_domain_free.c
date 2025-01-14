
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_domain {int iop; } ;
struct iommu_domain {int dummy; } ;


 int free_io_pgtable_ops (int ) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct mtk_iommu_domain*) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static void mtk_iommu_domain_free(struct iommu_domain *domain)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);

 free_io_pgtable_ops(dom->iop);
 iommu_put_dma_cookie(domain);
 kfree(to_mtk_domain(domain));
}
