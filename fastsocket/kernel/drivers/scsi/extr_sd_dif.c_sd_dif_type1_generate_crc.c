
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity_exchg {int dummy; } ;


 int sd_dif_crc_fn ;
 int sd_dif_type1_generate (struct blk_integrity_exchg*,int ) ;

__attribute__((used)) static void sd_dif_type1_generate_crc(struct blk_integrity_exchg *bix)
{
 sd_dif_type1_generate(bix, sd_dif_crc_fn);
}
