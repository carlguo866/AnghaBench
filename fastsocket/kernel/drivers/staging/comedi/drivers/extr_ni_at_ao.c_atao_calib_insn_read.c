
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;



__attribute__((used)) static int atao_calib_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int i;
 for (i = 0; i < insn->n; i++) {
  data[i] = 0;
 }
 return insn->n;
}
