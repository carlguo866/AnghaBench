
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;
struct PGPKT_STRUCT {int offset; int word_en; int* data; } ;


 int BIT (int) ;
 void* GET_EFUSE_OFFSET (int) ;
 void* GET_EFUSE_WORD_EN (int) ;
 int PGPKG_MAX_WORDS ;
 int calculate_word_cnts (int) ;
 scalar_t__ efuse_available_max_size ;
 scalar_t__ efuse_one_byte_read (struct _adapter*,scalar_t__,int*) ;
 int efuse_one_byte_write (struct _adapter*,scalar_t__,int) ;

__attribute__((used)) static u8 fix_header(struct _adapter *adapter, u8 header, u16 header_addr)
{
 struct PGPKT_STRUCT pkt;
 u8 offset, word_en, value;
 u16 addr;
 int i;
 u8 ret = 1;

 pkt.offset = GET_EFUSE_OFFSET(header);
 pkt.word_en = GET_EFUSE_WORD_EN(header);
 addr = header_addr + 1 + calculate_word_cnts(pkt.word_en) * 2;
 if (addr > efuse_available_max_size)
  return 0;

 addr = 0;
 while (addr < header_addr) {
  if (!efuse_one_byte_read(adapter, addr++, &value)) {
   ret = 0;
   break;
  }
  offset = GET_EFUSE_OFFSET(value);
  word_en = GET_EFUSE_WORD_EN(value);
  if (pkt.offset != offset) {
   addr += calculate_word_cnts(word_en) * 2;
   continue;
  }
  for (i = 0; i < PGPKG_MAX_WORDS; i++) {
   if (BIT(i) & word_en) {
    if (BIT(i) & pkt.word_en) {
     if (efuse_one_byte_read(
       adapter, addr,
       &value))
      pkt.data[i * 2] = value;
     else
      return 0;
     if (efuse_one_byte_read(
       adapter,
       addr + 1,
       &value))
      pkt.data[i * 2 + 1] =
       value;
     else
      return 0;
    }
    addr += 2;
   }
  }
 }
 if (addr != header_addr)
  return 0;
 addr++;

 for (i = 0; i < PGPKG_MAX_WORDS; i++) {
  if (BIT(i) & pkt.word_en) {
   efuse_one_byte_write(adapter, addr, pkt.data[i * 2]);
   efuse_one_byte_write(adapter, addr + 1,
          pkt.data[i * 2 + 1]);

   if (!efuse_one_byte_read(adapter, addr, &value)) {
    ret = 0;
   } else if (pkt.data[i * 2] != value) {
    ret = 0;
    if (value == 0xFF)
     efuse_one_byte_write(adapter, addr,
            pkt.data[i * 2]);
   }
   if (!efuse_one_byte_read(adapter, addr + 1, &value)) {
    ret = 0;
   } else if (pkt.data[i * 2 + 1] != value) {
    ret = 0;
    if (value == 0xFF)
     efuse_one_byte_write(adapter, addr + 1,
            pkt.data[i * 2 +
              1]);
   }
  }
  addr += 2;
 }
 return ret;
}
