
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int chip_read (struct CHIPSTATE*) ;

__attribute__((used)) static int tda9840_checkit(struct CHIPSTATE *chip)
{
 int rc;
 rc = chip_read(chip);

 return ((rc & 0x1f) == 0) ? 1 : 0;
}
