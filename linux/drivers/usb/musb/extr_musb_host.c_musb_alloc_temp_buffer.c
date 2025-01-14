
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ transfer_buffer_length; int transfer_flags; scalar_t__ transfer_buffer; scalar_t__ sg; scalar_t__ num_sgs; } ;
struct musb_temp_buffer {scalar_t__ data; scalar_t__ old_xfer_buffer; void* kmalloc_ptr; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MUSB_USB_DMA_ALIGN ;
 struct musb_temp_buffer* PTR_ALIGN (void*,int) ;
 int URB_ALIGNED_TEMP_BUFFER ;
 void* kmalloc (size_t,int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ usb_urb_dir_in (struct urb*) ;

__attribute__((used)) static int musb_alloc_temp_buffer(struct urb *urb, gfp_t mem_flags)
{
 enum dma_data_direction dir;
 struct musb_temp_buffer *temp;
 void *kmalloc_ptr;
 size_t kmalloc_size;

 if (urb->num_sgs || urb->sg ||
     urb->transfer_buffer_length == 0 ||
     !((uintptr_t)urb->transfer_buffer & (MUSB_USB_DMA_ALIGN - 1)))
  return 0;

 dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;


 kmalloc_size = urb->transfer_buffer_length +
  sizeof(struct musb_temp_buffer) + MUSB_USB_DMA_ALIGN - 1;

 kmalloc_ptr = kmalloc(kmalloc_size, mem_flags);
 if (!kmalloc_ptr)
  return -ENOMEM;


 temp = PTR_ALIGN(kmalloc_ptr, MUSB_USB_DMA_ALIGN);


 temp->kmalloc_ptr = kmalloc_ptr;
 temp->old_xfer_buffer = urb->transfer_buffer;
 if (dir == DMA_TO_DEVICE)
  memcpy(temp->data, urb->transfer_buffer,
         urb->transfer_buffer_length);
 urb->transfer_buffer = temp->data;

 urb->transfer_flags |= URB_ALIGNED_TEMP_BUFFER;

 return 0;
}
