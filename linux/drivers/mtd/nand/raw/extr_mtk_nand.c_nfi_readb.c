
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mtk_nfc {scalar_t__ regs; } ;


 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static inline u8 nfi_readb(struct mtk_nfc *nfc, u32 reg)
{
 return readb_relaxed(nfc->regs + reg);
}
