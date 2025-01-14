
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int csreg; } ;


 int in_8 (int ) ;
 int mpc5121_nfc_select_chip (struct nand_chip*,int) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int out_8 (int ,int) ;

__attribute__((used)) static void ads5121_select_chip(struct nand_chip *nand, int chip)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(nand);
 u8 v;

 v = in_8(prv->csreg);
 v |= 0x0F;

 if (chip >= 0) {
  mpc5121_nfc_select_chip(nand, 0);
  v &= ~(1 << chip);
 } else
  mpc5121_nfc_select_chip(nand, -1);

 out_8(prv->csreg, v);
}
