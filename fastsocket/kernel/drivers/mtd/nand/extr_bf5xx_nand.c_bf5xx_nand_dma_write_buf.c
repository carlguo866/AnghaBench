
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {short page_size; } ;
struct bf5xx_nand_info {int device; struct bf5xx_nand_platform* platform; } ;


 int bf5xx_nand_dma_rw (struct mtd_info*,int *,int ) ;
 int bf5xx_nand_write_buf (struct mtd_info*,int const*,int) ;
 int dev_dbg (int ,char*,struct mtd_info*,int const*,int) ;
 struct bf5xx_nand_info* mtd_to_nand_info (struct mtd_info*) ;

__attribute__((used)) static void bf5xx_nand_dma_write_buf(struct mtd_info *mtd,
    const uint8_t *buf, int len)
{
 struct bf5xx_nand_info *info = mtd_to_nand_info(mtd);
 struct bf5xx_nand_platform *plat = info->platform;
 unsigned short page_size = (plat->page_size ? 512 : 256);

 dev_dbg(info->device, "mtd->%p, buf->%p, len %d\n", mtd, buf, len);

 if (len == page_size)
  bf5xx_nand_dma_rw(mtd, (uint8_t *)buf, 0);
 else
  bf5xx_nand_write_buf(mtd, buf, len);
}
