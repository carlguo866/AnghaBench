
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx_dmaqueue {int current_field; scalar_t__ lines_completed; scalar_t__ lines_per_field; scalar_t__ field1_done; } ;
struct cx231xx {int dummy; } ;



u8 cx231xx_is_buffer_done(struct cx231xx *dev, struct cx231xx_dmaqueue *dma_q)
{
 u8 buffer_complete = 0;


 buffer_complete = ((dma_q->current_field == 2) &&
      (dma_q->lines_completed >= dma_q->lines_per_field) &&
       dma_q->field1_done);

 return buffer_complete;
}
