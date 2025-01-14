
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtsx_chip {int dummy; } ;


 int STATUS_FAIL ;
 int STATUS_NOMEM ;
 int STATUS_SUCCESS ;
 int array_size (int,int) ;
 int dev_dbg (int ,char*,int) ;
 int rtsx_dev (struct rtsx_chip*) ;
 int rtsx_read_cfg_dw (struct rtsx_chip*,scalar_t__,int,int*) ;
 int vfree (int*) ;
 int* vmalloc (int ) ;

int rtsx_read_cfg_seq(struct rtsx_chip *chip, u8 func, u16 addr, u8 *buf,
        int len)
{
 u32 *data;
 u16 offset = addr % 4;
 u16 aligned_addr = addr - offset;
 int dw_len, i, j;
 int retval;

 if ((len + offset) % 4)
  dw_len = (len + offset) / 4 + 1;
 else
  dw_len = (len + offset) / 4;

 dev_dbg(rtsx_dev(chip), "dw_len = %d\n", dw_len);

 data = vmalloc(array_size(dw_len, 4));
 if (!data)
  return STATUS_NOMEM;

 for (i = 0; i < dw_len; i++) {
  retval = rtsx_read_cfg_dw(chip, func, aligned_addr + i * 4,
       data + i);
  if (retval != STATUS_SUCCESS) {
   vfree(data);
   return STATUS_FAIL;
  }
 }

 if (buf) {
  j = 0;

  for (i = 0; i < len; i++) {
   buf[i] = (u8)(data[j] >> (offset * 8));
   if (++offset == 4) {
    j++;
    offset = 0;
   }
  }
 }

 vfree(data);

 return STATUS_SUCCESS;
}
