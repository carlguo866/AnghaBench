
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct card {scalar_t__ plx; } ;


 scalar_t__ PLX_CONTROL ;
 int PLX_CTL_RESET ;
 scalar_t__ PLX_MAILBOX_0 ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void wanxl_reset(struct card *card)
{
 u32 old_value = readl(card->plx + PLX_CONTROL) & ~PLX_CTL_RESET;

 writel(0x80, card->plx + PLX_MAILBOX_0);
 writel(old_value | PLX_CTL_RESET, card->plx + PLX_CONTROL);
 readl(card->plx + PLX_CONTROL);
 udelay(1);
 writel(old_value, card->plx + PLX_CONTROL);
 readl(card->plx + PLX_CONTROL);
}
