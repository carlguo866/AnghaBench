
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct spi_device {int dev; } ;
struct flash_info {int flags; scalar_t__ jedec_id; } ;


 int ARRAY_SIZE (struct flash_info*) ;
 int ENODEV ;
 struct flash_info* ERR_PTR (int) ;
 int IS_POW2PS ;
 int SUP_EXTID ;
 int SUP_POW2PS ;
 struct flash_info* dataflash_data ;
 int dataflash_status (struct spi_device*) ;
 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static struct flash_info *jedec_lookup(struct spi_device *spi,
           u64 jedec, bool use_extid)
{
 struct flash_info *info;
 int status;

 for (info = dataflash_data;
      info < dataflash_data + ARRAY_SIZE(dataflash_data);
      info++) {
  if (use_extid && !(info->flags & SUP_EXTID))
   continue;

  if (info->jedec_id == jedec) {
   dev_dbg(&spi->dev, "OTP, sector protect%s\n",
    (info->flags & SUP_POW2PS) ?
    ", binary pagesize" : "");
   if (info->flags & SUP_POW2PS) {
    status = dataflash_status(spi);
    if (status < 0) {
     dev_dbg(&spi->dev, "status error %d\n",
      status);
     return ERR_PTR(status);
    }
    if (status & 0x1) {
     if (info->flags & IS_POW2PS)
      return info;
    } else {
     if (!(info->flags & IS_POW2PS))
      return info;
    }
   } else
    return info;
  }
 }

 return ERR_PTR(-ENODEV);
}
