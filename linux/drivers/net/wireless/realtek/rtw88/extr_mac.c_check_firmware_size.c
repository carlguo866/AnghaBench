
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int const BIT (int) ;
 int FW_HDR_CHKSUM_SIZE ;
 int FW_HDR_DMEM_SIZE ;
 int FW_HDR_EMEM_SIZE ;
 int FW_HDR_IMEM_SIZE ;
 int FW_HDR_MEM_USAGE ;
 int FW_HDR_SIZE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool check_firmware_size(const u8 *data, u32 size)
{
 u32 dmem_size;
 u32 imem_size;
 u32 emem_size;
 u32 real_size;

 dmem_size = le32_to_cpu(*((__le32 *)(data + FW_HDR_DMEM_SIZE)));
 imem_size = le32_to_cpu(*((__le32 *)(data + FW_HDR_IMEM_SIZE)));
 emem_size = ((*(data + FW_HDR_MEM_USAGE)) & BIT(4)) ?
      le32_to_cpu(*((__le32 *)(data + FW_HDR_EMEM_SIZE))) : 0;

 dmem_size += FW_HDR_CHKSUM_SIZE;
 imem_size += FW_HDR_CHKSUM_SIZE;
 emem_size += emem_size ? FW_HDR_CHKSUM_SIZE : 0;
 real_size = FW_HDR_SIZE + dmem_size + imem_size + emem_size;
 if (real_size != size)
  return 0;

 return 1;
}
