
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct dma_coherent_mem {int dummy; } ;
struct device {int dummy; } ;


 int __dma_mmap_from_coherent (struct dma_coherent_mem*,struct vm_area_struct*,void*,size_t,int*) ;
 struct dma_coherent_mem* dev_get_coherent_memory (struct device*) ;

int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_struct *vma,
      void *vaddr, size_t size, int *ret)
{
 struct dma_coherent_mem *mem = dev_get_coherent_memory(dev);

 return __dma_mmap_from_coherent(mem, vma, vaddr, size, ret);
}
