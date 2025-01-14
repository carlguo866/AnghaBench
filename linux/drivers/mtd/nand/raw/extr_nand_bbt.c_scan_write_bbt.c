
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct mtd_oob_ops {size_t len; int * oobbuf; int * datbuf; int ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int oobsize; } ;
typedef int loff_t ;


 int MTD_OPS_PLACE_OOB ;
 int mtd_write_oob (struct mtd_info*,int ,struct mtd_oob_ops*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int scan_write_bbt(struct nand_chip *this, loff_t offs, size_t len,
     uint8_t *buf, uint8_t *oob)
{
 struct mtd_info *mtd = nand_to_mtd(this);
 struct mtd_oob_ops ops;

 ops.mode = MTD_OPS_PLACE_OOB;
 ops.ooboffs = 0;
 ops.ooblen = mtd->oobsize;
 ops.datbuf = buf;
 ops.oobbuf = oob;
 ops.len = len;

 return mtd_write_oob(mtd, offs, &ops);
}
