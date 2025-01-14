
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raw_driver_strength; int hs200_max_dtr; } ;
struct mmc_card {int drive_strength; TYPE_2__* host; TYPE_1__ ext_csd; } ;
struct TYPE_4__ {int fixed_drv_type; } ;


 int mmc_driver_type_mask (int) ;
 int mmc_select_drive_strength (struct mmc_card*,int ,int,int*) ;
 int mmc_set_driver_type (TYPE_2__*,int) ;

__attribute__((used)) static void mmc_select_driver_type(struct mmc_card *card)
{
 int card_drv_type, drive_strength, drv_type = 0;
 int fixed_drv_type = card->host->fixed_drv_type;

 card_drv_type = card->ext_csd.raw_driver_strength |
   mmc_driver_type_mask(0);

 if (fixed_drv_type >= 0)
  drive_strength = card_drv_type & mmc_driver_type_mask(fixed_drv_type)
     ? fixed_drv_type : 0;
 else
  drive_strength = mmc_select_drive_strength(card,
          card->ext_csd.hs200_max_dtr,
          card_drv_type, &drv_type);

 card->drive_strength = drive_strength;

 if (drv_type)
  mmc_set_driver_type(card->host, drv_type);
}
