
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sdhci_slot {int quirks; scalar_t__ offset; TYPE_2__* curcmd; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {char* data; int flags; int block_size; scalar_t__ len; } ;


 int DELAY (int) ;
 int MMC_DATA_BLOCK_SIZE ;
 int RD4 (struct sdhci_slot*,int ) ;
 int RD_MULTI_4 (struct sdhci_slot*,int ,int*,size_t) ;
 int SDHCI_BUFFER ;
 int SDHCI_QUIRK_BROKEN_TIMINGS ;
 size_t min (int,scalar_t__) ;

__attribute__((used)) static void
sdhci_read_block_pio(struct sdhci_slot *slot)
{
 uint32_t data;
 char *buffer;
 size_t left;

 buffer = slot->curcmd->data->data;
 buffer += slot->offset;







  left = min(512, slot->curcmd->data->len - slot->offset);
 slot->offset += left;


 if (slot->quirks & SDHCI_QUIRK_BROKEN_TIMINGS)
  DELAY(10);

 if ((intptr_t)buffer & 3) {
  while (left > 3) {
   data = RD4(slot, SDHCI_BUFFER);
   buffer[0] = data;
   buffer[1] = (data >> 8);
   buffer[2] = (data >> 16);
   buffer[3] = (data >> 24);
   buffer += 4;
   left -= 4;
  }
 } else {
  RD_MULTI_4(slot, SDHCI_BUFFER,
      (uint32_t *)buffer, left >> 2);
  left &= 3;
 }

 if (left > 0) {
  data = RD4(slot, SDHCI_BUFFER);
  while (left > 0) {
   *(buffer++) = data;
   data >>= 8;
   left--;
  }
 }
}
