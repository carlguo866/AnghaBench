
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipaq_micro {int dev; scalar_t__ base; } ;


 scalar_t__ UTDR ;
 scalar_t__ UTSR1 ;
 int UTSR1_FRE ;
 int UTSR1_PRE ;
 int UTSR1_RNE ;
 int UTSR1_ROR ;
 int dev_err (int ,char*) ;
 int micro_process_char (struct ipaq_micro*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void micro_rx_chars(struct ipaq_micro *micro)
{
 u32 status, ch;

 while ((status = readl(micro->base + UTSR1)) & UTSR1_RNE) {
  ch = readl(micro->base + UTDR);
  if (status & UTSR1_PRE)
   dev_err(micro->dev, "rx: parity error\n");
  else if (status & UTSR1_FRE)
   dev_err(micro->dev, "rx: framing error\n");
  else if (status & UTSR1_ROR)
   dev_err(micro->dev, "rx: overrun error\n");
  micro_process_char(micro, ch);
 }
}
