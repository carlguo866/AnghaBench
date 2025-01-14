
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_acr {int dummy; } ;
struct ls_ucode_img_desc {int app_start_offset; int app_resident_code_offset; int app_resident_data_offset; int app_resident_data_size; int app_imem_entry; int app_resident_code_size; } ;
struct ls_ucode_img {int ucode_off; struct ls_ucode_img_desc ucode_desc; } ;
struct acr_r352_flcn_bl_desc {int non_sec_code_off; int data_size; void* data_dma_base1; void* data_dma_base; int code_entry_point; int non_sec_code_size; void* code_dma_base1; void* code_dma_base; int ctx_dma; } ;


 int FALCON_DMAIDX_UCODE ;
 void* lower_32_bits (int) ;
 void* upper_32_bits (int) ;

__attribute__((used)) static void
acr_r352_generate_flcn_bl_desc(const struct nvkm_acr *acr,
          const struct ls_ucode_img *img, u64 wpr_addr,
          void *_desc)
{
 struct acr_r352_flcn_bl_desc *desc = _desc;
 const struct ls_ucode_img_desc *pdesc = &img->ucode_desc;
 u64 base, addr_code, addr_data;

 base = wpr_addr + img->ucode_off + pdesc->app_start_offset;
 addr_code = (base + pdesc->app_resident_code_offset) >> 8;
 addr_data = (base + pdesc->app_resident_data_offset) >> 8;

 desc->ctx_dma = FALCON_DMAIDX_UCODE;
 desc->code_dma_base = lower_32_bits(addr_code);
 desc->code_dma_base1 = upper_32_bits(addr_code);
 desc->non_sec_code_off = pdesc->app_resident_code_offset;
 desc->non_sec_code_size = pdesc->app_resident_code_size;
 desc->code_entry_point = pdesc->app_imem_entry;
 desc->data_dma_base = lower_32_bits(addr_data);
 desc->data_dma_base1 = upper_32_bits(addr_data);
 desc->data_size = pdesc->app_resident_data_size;
}
