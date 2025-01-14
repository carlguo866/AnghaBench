
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {int dummy; } ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 unsigned int NI_660X_MAX_GATE_PIN ;
 unsigned int NI_660X_MAX_RTSI_CHAN ;
 unsigned int NI_660X_NEXT_SRC_GATE_SEL ;
 unsigned int NI_GPCT_GATE_PIN_GATE_SELECT (unsigned int) ;




 unsigned int NI_GPCT_RTSI_GATE_SELECT (unsigned int) ;

 int ni_tio_set_gate_raw (struct ni_gpct*,unsigned int) ;

__attribute__((used)) static int ni_660x_set_gate(struct ni_gpct *counter, unsigned int gate_source)
{
 unsigned int chan = CR_CHAN(gate_source);
 unsigned int gate_sel;
 unsigned int i;

 switch (chan) {
 case 129:
  gate_sel = NI_660X_NEXT_SRC_GATE_SEL;
  break;
 case 130:
 case 131:
 case 128:
 case 132:
  gate_sel = chan & 0x1f;
  break;
 default:
  for (i = 0; i <= NI_660X_MAX_RTSI_CHAN; ++i) {
   if (chan == NI_GPCT_RTSI_GATE_SELECT(i)) {
    gate_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_660X_MAX_RTSI_CHAN)
   break;
  for (i = 0; i <= NI_660X_MAX_GATE_PIN; ++i) {
   if (chan == NI_GPCT_GATE_PIN_GATE_SELECT(i)) {
    gate_sel = chan & 0x1f;
    break;
   }
  }
  if (i <= NI_660X_MAX_GATE_PIN)
   break;
  return -EINVAL;
 }
 ni_tio_set_gate_raw(counter, gate_sel);
 return 0;
}
