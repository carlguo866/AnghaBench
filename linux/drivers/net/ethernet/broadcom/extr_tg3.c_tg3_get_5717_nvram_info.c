
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int nvram_pagesize; void* nvram_size; void* nvram_jedecnum; } ;


 int ATMEL_AT24C512_CHIP_SIZE ;
 int FLASH ;
 void* JEDEC_ATMEL ;
 void* JEDEC_ST ;
 int NO_NVRAM ;
 int NO_NVRAM_ADDR_TRANS ;
 int NVRAM_BUFFERED ;
 int NVRAM_CFG1 ;
 int NVRAM_CFG1_5752VENDOR_MASK ;
 int NVRAM_CFG1_COMPAT_BYPASS ;
 void* TG3_NVRAM_SIZE_128KB ;
 void* TG3_NVRAM_SIZE_256KB ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_nvram_get_pagesize (struct tg3*,int) ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;

__attribute__((used)) static void tg3_get_5717_nvram_info(struct tg3 *tp)
{
 u32 nvcfg1;

 nvcfg1 = tr32(NVRAM_CFG1);

 switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
 case 141:
 case 138:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tp->nvram_pagesize = ATMEL_AT24C512_CHIP_SIZE;

  nvcfg1 &= ~NVRAM_CFG1_COMPAT_BYPASS;
  tw32(NVRAM_CFG1, nvcfg1);
  return;
 case 140:
 case 145:
 case 144:
 case 139:
 case 143:
 case 142:
 case 146:
  tp->nvram_jedecnum = JEDEC_ATMEL;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);

  switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
  case 139:

   break;
  case 143:
  case 142:
   tp->nvram_size = TG3_NVRAM_SIZE_256KB;
   break;
  default:
   tp->nvram_size = TG3_NVRAM_SIZE_128KB;
   break;
  }
  break;
 case 131:
 case 135:
 case 129:
 case 133:
 case 130:
 case 134:
 case 128:
 case 132:
 case 137:
 case 136:
  tp->nvram_jedecnum = JEDEC_ST;
  tg3_flag_set(tp, NVRAM_BUFFERED);
  tg3_flag_set(tp, FLASH);

  switch (nvcfg1 & NVRAM_CFG1_5752VENDOR_MASK) {
  case 130:
  case 128:

   break;
  case 134:
  case 132:
   tp->nvram_size = TG3_NVRAM_SIZE_256KB;
   break;
  default:
   tp->nvram_size = TG3_NVRAM_SIZE_128KB;
   break;
  }
  break;
 default:
  tg3_flag_set(tp, NO_NVRAM);
  return;
 }

 tg3_nvram_get_pagesize(tp, nvcfg1);
 if (tp->nvram_pagesize != 264 && tp->nvram_pagesize != 528)
  tg3_flag_set(tp, NO_NVRAM_ADDR_TRANS);
}
