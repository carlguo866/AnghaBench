
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_device {int link; } ;


 int ARRAY_SIZE (int const*) ;
 int EIO ;
 int ata_dev_err (struct ata_device*,char*,int,unsigned int) ;
 unsigned int sata_pmp_read (int ,int,int *) ;

__attribute__((used)) static int sata_pmp_read_gscr(struct ata_device *dev, u32 *gscr)
{
 static const int gscr_to_read[] = { 0, 1, 2, 32, 33, 64, 96 };
 int i;

 for (i = 0; i < ARRAY_SIZE(gscr_to_read); i++) {
  int reg = gscr_to_read[i];
  unsigned int err_mask;

  err_mask = sata_pmp_read(dev->link, reg, &gscr[reg]);
  if (err_mask) {
   ata_dev_err(dev, "failed to read PMP GSCR[%d] (Emask=0x%x)\n",
        reg, err_mask);
   return -EIO;
  }
 }

 return 0;
}
