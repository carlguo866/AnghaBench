
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int valid_dma_direction (int) ;

__attribute__((used)) static u64 qib_dma_map_single(struct ib_device *dev, void *cpu_addr,
         size_t size, enum dma_data_direction direction)
{
 BUG_ON(!valid_dma_direction(direction));
 return (u64) cpu_addr;
}
