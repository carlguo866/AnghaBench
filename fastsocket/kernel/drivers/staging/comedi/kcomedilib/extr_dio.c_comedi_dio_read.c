
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int n; unsigned int* data; unsigned int subdev; int chanspec; int insn; } ;
typedef int insn ;


 int CR_PACK (unsigned int,int ,int ) ;
 int INSN_READ ;
 int comedi_do_insn (void*,struct comedi_insn*) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_dio_read(void *dev, unsigned int subdev, unsigned int chan,
      unsigned int *val)
{
 struct comedi_insn insn;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_READ;
 insn.n = 1;
 insn.data = val;
 insn.subdev = subdev;
 insn.chanspec = CR_PACK(chan, 0, 0);

 return comedi_do_insn(dev, &insn);
}
