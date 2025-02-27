
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct nand_chip {int chip_shift; int page_shift; } ;
struct mtd_info {int writesize; } ;
struct gpmi_nand_data {scalar_t__* data_buffer_dma; } ;
typedef int loff_t ;


 int GPMI_IS_MX23 (struct gpmi_nand_data*) ;
 int nand_deselect_target (struct nand_chip*) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_op (struct nand_chip*,int,int,scalar_t__*,int) ;
 int nand_select_target (struct nand_chip*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_block_markbad(struct nand_chip *chip, loff_t ofs)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 int ret = 0;
 uint8_t *block_mark;
 int column, page, chipnr;

 chipnr = (int)(ofs >> chip->chip_shift);
 nand_select_target(chip, chipnr);

 column = !GPMI_IS_MX23(this) ? mtd->writesize : 0;


 block_mark = this->data_buffer_dma;
 block_mark[0] = 0;


 page = (int)(ofs >> chip->page_shift);

 ret = nand_prog_page_op(chip, page, column, block_mark, 1);

 nand_deselect_target(chip);

 return ret;
}
