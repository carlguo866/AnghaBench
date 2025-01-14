
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct scom_device {int dummy; } ;


 int EINVAL ;
 int XSCOM_ADDR_FORM1_HI ;
 int XSCOM_ADDR_FORM1_HI_SHIFT ;
 int XSCOM_ADDR_FORM1_LOW ;
 int XSCOM_DATA_IND_FORM1_DATA ;
 int __put_scom (struct scom_device*,int,int,int *) ;

__attribute__((used)) static int put_indirect_scom_form1(struct scom_device *scom, uint64_t value,
       uint64_t addr, uint32_t *status)
{
 uint64_t ind_data, ind_addr;

 if (value & ~XSCOM_DATA_IND_FORM1_DATA)
  return -EINVAL;

 ind_addr = addr & XSCOM_ADDR_FORM1_LOW;
 ind_data = value | (addr & XSCOM_ADDR_FORM1_HI) << XSCOM_ADDR_FORM1_HI_SHIFT;
 return __put_scom(scom, ind_data, ind_addr, status);
}
