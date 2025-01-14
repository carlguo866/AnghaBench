
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct sunxi_nand_hw_ecc {int mode; } ;
struct TYPE_2__ {int size; struct sunxi_nand_hw_ecc* priv; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;


 int NFC_ECC_BLOCK_512 ;
 int NFC_ECC_BLOCK_SIZE_MSK ;
 int NFC_ECC_EN ;
 int NFC_ECC_EXCEPTION ;
 int NFC_ECC_MODE (int ) ;
 int NFC_ECC_MODE_MSK ;
 int NFC_ECC_PIPELINE ;
 scalar_t__ NFC_REG_ECC_CTL ;
 int readl (scalar_t__) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_hw_ecc_enable(struct nand_chip *nand)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct sunxi_nand_hw_ecc *data = nand->ecc.priv;
 u32 ecc_ctl;

 ecc_ctl = readl(nfc->regs + NFC_REG_ECC_CTL);
 ecc_ctl &= ~(NFC_ECC_MODE_MSK | NFC_ECC_PIPELINE |
       NFC_ECC_BLOCK_SIZE_MSK);
 ecc_ctl |= NFC_ECC_EN | NFC_ECC_MODE(data->mode) | NFC_ECC_EXCEPTION |
     NFC_ECC_PIPELINE;

 if (nand->ecc.size == 512)
  ecc_ctl |= NFC_ECC_BLOCK_512;

 writel(ecc_ctl, nfc->regs + NFC_REG_ECC_CTL);
}
