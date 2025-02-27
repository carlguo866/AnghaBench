
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i40e_context_ele {int offset; int lsb; int width; } ;
typedef int dest_byte ;


 int BIT (int ) ;
 int I40E_DMA_TO_NONDMA ;
 int I40E_NONDMA_TO_DMA ;
 int i40e_memcpy (int*,int*,int,int ) ;

__attribute__((used)) static void i40e_write_byte(u8 *hmc_bits,
       struct i40e_context_ele *ce_info,
       u8 *src)
{
 u8 src_byte, dest_byte, mask;
 u8 *from, *dest;
 u16 shift_width;


 from = src + ce_info->offset;


 shift_width = ce_info->lsb % 8;
 mask = (u8)(BIT(ce_info->width) - 1);

 src_byte = *from;
 src_byte &= mask;


 mask <<= shift_width;
 src_byte <<= shift_width;


 dest = hmc_bits + (ce_info->lsb / 8);

 i40e_memcpy(&dest_byte, dest, sizeof(dest_byte), I40E_DMA_TO_NONDMA);

 dest_byte &= ~mask;
 dest_byte |= src_byte;


 i40e_memcpy(dest, &dest_byte, sizeof(dest_byte), I40E_NONDMA_TO_DMA);
}
