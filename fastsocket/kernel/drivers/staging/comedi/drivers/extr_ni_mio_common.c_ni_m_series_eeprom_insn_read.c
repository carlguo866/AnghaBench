
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int* eeprom_buffer; } ;


 size_t CR_CHAN (int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int ni_m_series_eeprom_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 data[0] = devpriv->eeprom_buffer[CR_CHAN(insn->chanspec)];

 return 1;
}
