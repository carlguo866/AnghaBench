
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct nand_chip {struct mxc_nand_host* priv; } ;
struct mxc_nand_host {scalar_t__ regs; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int DEBUG (int ,char*) ;
 int MTD_DEBUG_LEVEL0 ;
 scalar_t__ NFC_ECC_STATUS_RESULT ;
 int readw (scalar_t__) ;

__attribute__((used)) static int mxc_nand_correct_data(struct mtd_info *mtd, u_char *dat,
     u_char *read_ecc, u_char *calc_ecc)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct mxc_nand_host *host = nand_chip->priv;






 uint16_t ecc_status = readw(host->regs + NFC_ECC_STATUS_RESULT);

 if (((ecc_status & 0x3) == 2) || ((ecc_status >> 2) == 2)) {
  DEBUG(MTD_DEBUG_LEVEL0,
        "MXC_NAND: HWECC uncorrectable 2-bit ECC error\n");
  return -1;
 }

 return 0;
}
