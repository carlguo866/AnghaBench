
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_map_sg (struct device*,struct scatterlist*,unsigned int,int) ;
 struct scatterlist* scatterwalk_sg_next (struct scatterlist*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int talitos_map_sg(struct device *dev, struct scatterlist *sg,
     unsigned int nents, enum dma_data_direction dir,
     int chained)
{
 if (unlikely(chained))
  while (sg) {
   dma_map_sg(dev, sg, 1, dir);
   sg = scatterwalk_sg_next(sg);
  }
 else
  dma_map_sg(dev, sg, nents, dir);
 return nents;
}
