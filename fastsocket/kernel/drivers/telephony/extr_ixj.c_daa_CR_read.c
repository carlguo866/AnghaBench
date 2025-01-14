
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_26__ {int reg; } ;
struct TYPE_25__ {int reg; } ;
struct TYPE_24__ {int reg; } ;
struct TYPE_23__ {int reg; } ;
struct TYPE_22__ {int reg; } ;
struct TYPE_21__ {int reg; } ;
struct TYPE_27__ {TYPE_6__ cr0; TYPE_5__ cr1; TYPE_4__ cr2; TYPE_3__ cr3; TYPE_2__ cr4; TYPE_1__ cr5; } ;
struct TYPE_28__ {TYPE_7__ SOP; } ;
struct TYPE_29__ {TYPE_8__ SOP_REGS; } ;
struct TYPE_20__ {int high; int low; } ;
struct TYPE_19__ {int daa_mode; TYPE_9__ m_DAAShadowRegs; scalar_t__ XILINXbase; } ;
struct TYPE_17__ {int high; } ;
struct TYPE_18__ {TYPE_10__ bytes; int word; } ;
typedef TYPE_11__ IXJ_WORD ;
typedef TYPE_12__ IXJ ;
typedef TYPE_13__ BYTES ;


 int ALISDAA_ID_BYTE ;
 int SCI_Control (TYPE_12__*,int ) ;
 int SCI_Enable_DAA ;
 int SCI_End ;
 int SCI_Prepare (TYPE_12__*) ;




 void* inb_p (scalar_t__) ;
 int inw_p (scalar_t__) ;
 int ixjdebug ;
 int outb_p (int,scalar_t__) ;
 int printk (char*,int,int) ;

__attribute__((used)) static char daa_CR_read(IXJ *j, int cr)
{
 IXJ_WORD wdata;
 BYTES bytes;

 if (!SCI_Prepare(j))
  return 0;

 switch (j->daa_mode) {
 case 128:
  bytes.high = 0x30 + cr;
  break;
 case 129:
  bytes.high = 0x70 + cr;
  break;
 case 131:
  bytes.high = 0xB0 + cr;
  break;
 case 130:
 default:
  bytes.high = 0xF0 + cr;
  break;
 }

 bytes.low = 0x00;

 outb_p(bytes.high, j->XILINXbase + 0x03);
 outb_p(bytes.low, j->XILINXbase + 0x02);

 if (!SCI_Control(j, SCI_Enable_DAA))
  return 0;

 bytes.high = inb_p(j->XILINXbase + 0x03);
 bytes.low = inb_p(j->XILINXbase + 0x02);
 if (bytes.low != ALISDAA_ID_BYTE) {
  if (ixjdebug & 0x0001)
   printk("Cannot read DAA ID Byte high = %d low = %d\n", bytes.high, bytes.low);
  return 0;
 }
 if (!SCI_Control(j, SCI_Enable_DAA))
  return 0;
 if (!SCI_Control(j, SCI_End))
  return 0;

 wdata.word = inw_p(j->XILINXbase + 0x02);

 switch(cr){
  case 5:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr5.reg = wdata.bytes.high;
   break;
  case 4:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr4.reg = wdata.bytes.high;
   break;
  case 3:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr3.reg = wdata.bytes.high;
   break;
  case 2:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr2.reg = wdata.bytes.high;
   break;
  case 1:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr1.reg = wdata.bytes.high;
   break;
  case 0:
   j->m_DAAShadowRegs.SOP_REGS.SOP.cr0.reg = wdata.bytes.high;
   break;
  default:
   return 0;
 }
 return 1;
}
