
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rst_n_function; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;


 int EXT_CSD_RST_N_ENABLED ;
 int EXT_CSD_RST_N_EN_MASK ;

__attribute__((used)) static int mmc_can_reset(struct mmc_card *card)
{
 u8 rst_n_function;

 rst_n_function = card->ext_csd.rst_n_function;
 if ((rst_n_function & EXT_CSD_RST_N_EN_MASK) != EXT_CSD_RST_N_ENABLED)
  return 0;
 return 1;
}
