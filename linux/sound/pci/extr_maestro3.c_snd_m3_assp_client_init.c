
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_m3 {TYPE_1__* card; } ;
struct TYPE_4__ {int code; int data; } ;
struct m3_dma {int number; TYPE_2__ inst; } ;
struct TYPE_3__ {int dev; } ;


 int ALIGN (int,int) ;
 int ENOMEM ;
 int MEMTYPE_INTERNAL_DATA ;
 int MINISRC_IN_BUFFER_SIZE ;
 int MINISRC_OUT_BUFFER_SIZE ;
 int MINISRC_TMP_BUFFER_SIZE ;
 int dev_err (int ,char*,int,int,int) ;
 int snd_m3_assp_write (struct snd_m3*,int ,int,int ) ;

__attribute__((used)) static int snd_m3_assp_client_init(struct snd_m3 *chip, struct m3_dma *s, int index)
{
 int data_bytes = 2 * ( MINISRC_TMP_BUFFER_SIZE / 2 +
          MINISRC_IN_BUFFER_SIZE / 2 +
          1 + MINISRC_OUT_BUFFER_SIZE / 2 + 1 );
 int address, i;
 data_bytes = ALIGN(data_bytes, 256);
 address = 0x1100 + ((data_bytes/2) * index);

 if ((address + (data_bytes/2)) >= 0x1c00) {
  dev_err(chip->card->dev,
   "no memory for %d bytes at ind %d (addr 0x%x)\n",
      data_bytes, index, address);
  return -ENOMEM;
 }

 s->number = index;
 s->inst.code = 0x400;
 s->inst.data = address;

 for (i = data_bytes / 2; i > 0; address++, i--) {
  snd_m3_assp_write(chip, MEMTYPE_INTERNAL_DATA,
      address, 0);
 }

 return 0;
}
