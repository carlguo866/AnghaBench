
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ mmio; } ;


 int EBUSY ;
 scalar_t__ ICP_MULTI_ADC_CSR ;
 unsigned int ICP_MULTI_ADC_CSR_BSY ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static int icp_multi_ai_eoc(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned long context)
{
 unsigned int status;

 status = readw(dev->mmio + ICP_MULTI_ADC_CSR);
 if ((status & ICP_MULTI_ADC_CSR_BSY) == 0)
  return 0;
 return -EBUSY;
}
