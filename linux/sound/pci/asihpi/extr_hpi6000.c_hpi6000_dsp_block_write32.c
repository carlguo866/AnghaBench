
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct hpi_hw_obj {struct dsp_obj* ado; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;
struct dsp_obj {int dummy; } ;


 int H6WRITE ;
 int PCI_TIMEOUT ;
 scalar_t__ hpi6000_check_PCI2040_error_flag (struct hpi_adapter_obj*,int ) ;
 int hpi_write_block (struct dsp_obj*,int,int*,int) ;

__attribute__((used)) static u16 hpi6000_dsp_block_write32(struct hpi_adapter_obj *pao,
 u16 dsp_index, u32 hpi_address, u32 *source, u32 count)
{
 struct hpi_hw_obj *phw = pao->priv;
 struct dsp_obj *pdo = &phw->ado[dsp_index];
 u32 time_out = PCI_TIMEOUT;
 int c6711_burst_size = 128;
 u32 local_hpi_address = hpi_address;
 int local_count = count;
 int xfer_size;
 u32 *pdata = source;

 while (local_count) {
  if (local_count > c6711_burst_size)
   xfer_size = c6711_burst_size;
  else
   xfer_size = local_count;

  time_out = PCI_TIMEOUT;
  do {
   hpi_write_block(pdo, local_hpi_address, pdata,
    xfer_size);
  } while (hpi6000_check_PCI2040_error_flag(pao, H6WRITE)
   && --time_out);

  if (!time_out)
   break;
  pdata += xfer_size;
  local_hpi_address += sizeof(u32) * xfer_size;
  local_count -= xfer_size;
 }

 if (time_out)
  return 0;
 else
  return 1;
}
