
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto4xx_device {int scatter_buffer_size; scalar_t__ scatter_buffer_va; } ;
typedef scalar_t__ dma_addr_t ;


 int PPC4XX_LAST_SD ;
 int memcpy (int ,scalar_t__,int) ;
 int phys_to_virt (scalar_t__) ;

__attribute__((used)) static u32 crypto4xx_fill_one_page(struct crypto4xx_device *dev,
       dma_addr_t *addr, u32 *length,
       u32 *idx, u32 *offset, u32 *nbytes)
{
 u32 len;

 if (*length > dev->scatter_buffer_size) {
  memcpy(phys_to_virt(*addr),
   dev->scatter_buffer_va +
   *idx * dev->scatter_buffer_size + *offset,
   dev->scatter_buffer_size);
  *offset = 0;
  *length -= dev->scatter_buffer_size;
  *nbytes -= dev->scatter_buffer_size;
  if (*idx == PPC4XX_LAST_SD)
   *idx = 0;
  else
   (*idx)++;
  *addr = *addr + dev->scatter_buffer_size;
  return 1;
 } else if (*length < dev->scatter_buffer_size) {
  memcpy(phys_to_virt(*addr),
   dev->scatter_buffer_va +
   *idx * dev->scatter_buffer_size + *offset, *length);
  if ((*offset + *length) == dev->scatter_buffer_size) {
   if (*idx == PPC4XX_LAST_SD)
    *idx = 0;
   else
    (*idx)++;
   *nbytes -= *length;
   *offset = 0;
  } else {
   *nbytes -= *length;
   *offset += *length;
  }

  return 0;
 } else {
  len = (*nbytes <= dev->scatter_buffer_size) ?
    (*nbytes) : dev->scatter_buffer_size;
  memcpy(phys_to_virt(*addr),
   dev->scatter_buffer_va +
   *idx * dev->scatter_buffer_size + *offset,
   len);
  *offset = 0;
  *nbytes -= len;

  if (*idx == PPC4XX_LAST_SD)
   *idx = 0;
  else
   (*idx)++;

  return 0;
    }
}
