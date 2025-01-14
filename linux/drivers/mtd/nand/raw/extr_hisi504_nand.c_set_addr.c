
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; } ;
struct mtd_info {int dummy; } ;
struct hinfc_host {unsigned int command; int addr_cycle; int* addr_value; } ;


 int NAND_BUSWIDTH_16 ;
 unsigned int NAND_CMD_ERASE1 ;
 int NAND_ROW_ADDR_3 ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct hinfc_host* nand_get_controller_data (struct nand_chip*) ;
 int nand_opcode_8bits (unsigned int) ;

__attribute__((used)) static void set_addr(struct mtd_info *mtd, int column, int page_addr)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct hinfc_host *host = nand_get_controller_data(chip);
 unsigned int command = host->command;

 host->addr_cycle = 0;
 host->addr_value[0] = 0;
 host->addr_value[1] = 0;


 if (column != -1) {

  if (chip->options & NAND_BUSWIDTH_16 &&
    !nand_opcode_8bits(command))
   column >>= 1;

  host->addr_value[0] = column & 0xffff;
  host->addr_cycle = 2;
 }
 if (page_addr != -1) {
  host->addr_value[0] |= (page_addr & 0xffff)
   << (host->addr_cycle * 8);
  host->addr_cycle += 2;
  if (chip->options & NAND_ROW_ADDR_3) {
   host->addr_cycle += 1;
   if (host->command == NAND_CMD_ERASE1)
    host->addr_value[0] |= ((page_addr >> 16) & 0xff) << 16;
   else
    host->addr_value[1] |= ((page_addr >> 16) & 0xff);
  }
 }
}
