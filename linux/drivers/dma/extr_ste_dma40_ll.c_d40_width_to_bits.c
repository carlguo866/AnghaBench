
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_8_BYTES ;
 int STEDMA40_ESIZE_16_BIT ;
 int STEDMA40_ESIZE_32_BIT ;
 int STEDMA40_ESIZE_64_BIT ;
 int STEDMA40_ESIZE_8_BIT ;

__attribute__((used)) static u8 d40_width_to_bits(enum dma_slave_buswidth width)
{
 if (width == DMA_SLAVE_BUSWIDTH_1_BYTE)
  return STEDMA40_ESIZE_8_BIT;
 else if (width == DMA_SLAVE_BUSWIDTH_2_BYTES)
  return STEDMA40_ESIZE_16_BIT;
 else if (width == DMA_SLAVE_BUSWIDTH_8_BYTES)
  return STEDMA40_ESIZE_64_BIT;
 else
  return STEDMA40_ESIZE_32_BIT;
}
