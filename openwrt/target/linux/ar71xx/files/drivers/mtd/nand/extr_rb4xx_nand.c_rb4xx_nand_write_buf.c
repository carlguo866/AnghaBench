
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int pr_err (char*,int) ;
 int rb4xx_cpld_write (unsigned char const*,int) ;

__attribute__((used)) static void rb4xx_nand_write_buf(struct mtd_info *mtd, const unsigned char *buf,
     int len)
{
 int err;

 err = rb4xx_cpld_write(buf, len);
 if (err)
  pr_err("rb4xx_nand: write buf failed, err=%d\n", err);
}
