
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int oobsize; } ;


 int ERANGE ;

__attribute__((used)) static int nand_ooblayout_free_sp(struct mtd_info *mtd, int section,
      struct mtd_oob_region *oobregion)
{
 if (section > 1)
  return -ERANGE;

 if (mtd->oobsize == 16) {
  if (section)
   return -ERANGE;

  oobregion->length = 8;
  oobregion->offset = 8;
 } else {
  oobregion->length = 2;
  if (!section)
   oobregion->offset = 3;
  else
   oobregion->offset = 6;
 }

 return 0;
}
