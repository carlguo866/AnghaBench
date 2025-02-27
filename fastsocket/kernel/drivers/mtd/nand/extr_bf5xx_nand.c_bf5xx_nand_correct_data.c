
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {short page_size; } ;
struct bf5xx_nand_info {struct bf5xx_nand_platform* platform; } ;


 int bf5xx_nand_correct_data_256 (struct mtd_info*,int *,int *,int *) ;
 struct bf5xx_nand_info* mtd_to_nand_info (struct mtd_info*) ;

__attribute__((used)) static int bf5xx_nand_correct_data(struct mtd_info *mtd, u_char *dat,
     u_char *read_ecc, u_char *calc_ecc)
{
 struct bf5xx_nand_info *info = mtd_to_nand_info(mtd);
 struct bf5xx_nand_platform *plat = info->platform;
 unsigned short page_size = (plat->page_size ? 512 : 256);
 int ret;

 ret = bf5xx_nand_correct_data_256(mtd, dat, read_ecc, calc_ecc);


 if (page_size == 512) {
  dat += 256;
  read_ecc += 8;
  calc_ecc += 8;
  ret |= bf5xx_nand_correct_data_256(mtd, dat, read_ecc, calc_ecc);
 }

 return ret;
}
