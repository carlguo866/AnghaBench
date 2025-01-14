
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct brcmf_chip_priv {int dummy; } ;


 scalar_t__ DMP_DESC_ADDRESS ;
 int DMP_DESC_ADDRSIZE_GT32 ;
 scalar_t__ DMP_DESC_COMPONENT ;
 scalar_t__ DMP_DESC_EOT ;
 scalar_t__ DMP_DESC_MASTER_PORT ;
 int DMP_MASTER_PORT_NUM ;
 int DMP_MASTER_PORT_NUM_S ;
 int DMP_SLAVE_ADDR_BASE ;
 scalar_t__ DMP_SLAVE_SIZE_4K ;
 scalar_t__ DMP_SLAVE_SIZE_8K ;
 scalar_t__ DMP_SLAVE_SIZE_DESC ;
 int DMP_SLAVE_SIZE_TYPE ;
 int DMP_SLAVE_SIZE_TYPE_S ;
 int DMP_SLAVE_TYPE ;
 scalar_t__ DMP_SLAVE_TYPE_MWRAP ;
 int DMP_SLAVE_TYPE_S ;
 scalar_t__ DMP_SLAVE_TYPE_SLAVE ;
 scalar_t__ DMP_SLAVE_TYPE_SWRAP ;
 int EFAULT ;
 int EILSEQ ;
 int brcmf_chip_dmp_get_desc (struct brcmf_chip_priv*,int*,scalar_t__*) ;

__attribute__((used)) static int brcmf_chip_dmp_get_regaddr(struct brcmf_chip_priv *ci, u32 *eromaddr,
          u32 *regbase, u32 *wrapbase)
{
 u8 desc;
 u32 val, szdesc;
 u8 mpnum = 0;
 u8 stype, sztype, wraptype;

 *regbase = 0;
 *wrapbase = 0;

 val = brcmf_chip_dmp_get_desc(ci, eromaddr, &desc);
 if (desc == DMP_DESC_MASTER_PORT) {
  mpnum = (val & DMP_MASTER_PORT_NUM) >> DMP_MASTER_PORT_NUM_S;
  wraptype = DMP_SLAVE_TYPE_MWRAP;
 } else if (desc == DMP_DESC_ADDRESS) {

  *eromaddr -= 4;
  wraptype = DMP_SLAVE_TYPE_SWRAP;
 } else {
  *eromaddr -= 4;
  return -EILSEQ;
 }

 do {

  do {
   val = brcmf_chip_dmp_get_desc(ci, eromaddr, &desc);

   if (desc == DMP_DESC_EOT) {
    *eromaddr -= 4;
    return -EFAULT;
   }
  } while (desc != DMP_DESC_ADDRESS &&
    desc != DMP_DESC_COMPONENT);


  if (desc == DMP_DESC_COMPONENT) {
   *eromaddr -= 4;
   return 0;
  }


  if (val & DMP_DESC_ADDRSIZE_GT32)
   brcmf_chip_dmp_get_desc(ci, eromaddr, ((void*)0));

  sztype = (val & DMP_SLAVE_SIZE_TYPE) >> DMP_SLAVE_SIZE_TYPE_S;


  if (sztype == DMP_SLAVE_SIZE_DESC) {
   szdesc = brcmf_chip_dmp_get_desc(ci, eromaddr, ((void*)0));

   if (szdesc & DMP_DESC_ADDRSIZE_GT32)
    brcmf_chip_dmp_get_desc(ci, eromaddr, ((void*)0));
  }


  if (sztype != DMP_SLAVE_SIZE_4K &&
      sztype != DMP_SLAVE_SIZE_8K)
   continue;

  stype = (val & DMP_SLAVE_TYPE) >> DMP_SLAVE_TYPE_S;


  if (*regbase == 0 && stype == DMP_SLAVE_TYPE_SLAVE)
   *regbase = val & DMP_SLAVE_ADDR_BASE;
  if (*wrapbase == 0 && stype == wraptype)
   *wrapbase = val & DMP_SLAVE_ADDR_BASE;
 } while (*regbase == 0 || *wrapbase == 0);

 return 0;
}
