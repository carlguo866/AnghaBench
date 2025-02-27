
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; } ;
struct hynix_nand {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBM_FIRSTPAGE ;
 int NAND_BBM_LASTPAGE ;
 int NAND_BBM_SECONDPAGE ;
 int hynix_nand_cleanup (struct nand_chip*) ;
 int hynix_nand_rr_init (struct nand_chip*) ;
 struct hynix_nand* kzalloc (int,int ) ;
 int nand_is_slc (struct nand_chip*) ;
 int nand_set_manufacturer_data (struct nand_chip*,struct hynix_nand*) ;

__attribute__((used)) static int hynix_nand_init(struct nand_chip *chip)
{
 struct hynix_nand *hynix;
 int ret;

 if (!nand_is_slc(chip))
  chip->options |= NAND_BBM_LASTPAGE;
 else
  chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE;

 hynix = kzalloc(sizeof(*hynix), GFP_KERNEL);
 if (!hynix)
  return -ENOMEM;

 nand_set_manufacturer_data(chip, hynix);

 ret = hynix_nand_rr_init(chip);
 if (ret)
  hynix_nand_cleanup(chip);

 return ret;
}
