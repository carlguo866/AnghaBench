
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vpdma_desc_list {int dummy; } ;
struct vpdma_data_format {int dummy; } ;
struct v4l2_rect {int dummy; } ;
typedef enum vpdma_channel { ____Placeholder_vpdma_channel } vpdma_channel ;
typedef int dma_addr_t ;
struct TYPE_2__ {int num; } ;


 TYPE_1__* chan_info ;
 int vpdma_rawchan_add_out_dtd (struct vpdma_desc_list*,int,int,struct v4l2_rect const*,struct vpdma_data_format const*,int ,int,int,int ,int ) ;

void vpdma_add_out_dtd(struct vpdma_desc_list *list, int width,
  int stride, const struct v4l2_rect *c_rect,
  const struct vpdma_data_format *fmt, dma_addr_t dma_addr,
  int max_w, int max_h, enum vpdma_channel chan, u32 flags)
{
 vpdma_rawchan_add_out_dtd(list, width, stride, c_rect, fmt, dma_addr,
      max_w, max_h, chan_info[chan].num, flags);
}
