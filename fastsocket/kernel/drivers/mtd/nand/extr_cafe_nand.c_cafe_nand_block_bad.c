
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
typedef int loff_t ;



__attribute__((used)) static int cafe_nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
{
 return 0;
}
