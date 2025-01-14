
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {TYPE_2__* sgl; } ;
struct TYPE_3__ {int vb2_buf; } ;
struct saa7134_buf {TYPE_1__ vb2; } ;
struct TYPE_4__ {scalar_t__ offset; } ;


 int saa7134_buffer_startpage (struct saa7134_buf*) ;
 struct sg_table* vb2_dma_sg_plane_desc (int *,int ) ;

unsigned long saa7134_buffer_base(struct saa7134_buf *buf)
{
 unsigned long base;
 struct sg_table *dma = vb2_dma_sg_plane_desc(&buf->vb2.vb2_buf, 0);

 base = saa7134_buffer_startpage(buf) * 4096;
 base += dma->sgl[0].offset;
 return base;
}
