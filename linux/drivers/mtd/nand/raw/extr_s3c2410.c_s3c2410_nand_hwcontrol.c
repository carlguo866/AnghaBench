
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_nand_info {scalar_t__ regs; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 scalar_t__ S3C2410_NFADDR ;
 scalar_t__ S3C2410_NFCMD ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct s3c2410_nand_info* s3c2410_nand_mtd_toinfo (struct mtd_info*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void s3c2410_nand_hwcontrol(struct nand_chip *chip, int cmd,
       unsigned int ctrl)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct s3c2410_nand_info *info = s3c2410_nand_mtd_toinfo(mtd);

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, info->regs + S3C2410_NFCMD);
 else
  writeb(cmd, info->regs + S3C2410_NFADDR);
}
