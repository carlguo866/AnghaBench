
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {unsigned int addr; int * area; } ;
struct snd_bt87x {unsigned int line_bytes; unsigned int lines; TYPE_1__ dma_risc; int pci; } ;
typedef int __le32 ;


 int ENOMEM ;
 int MAX_RISC_SIZE ;
 int PAGE_ALIGN (int ) ;
 unsigned int PAGE_SIZE ;
 unsigned int RISC_EOL ;
 unsigned int RISC_IRQ ;
 unsigned int RISC_JUMP ;
 unsigned int RISC_RESET_STATUS_SHIFT ;
 unsigned int RISC_SET_STATUS_SHIFT ;
 unsigned int RISC_SOL ;
 unsigned int RISC_SYNC ;
 unsigned int RISC_SYNC_FM1 ;
 unsigned int RISC_SYNC_VRO ;
 unsigned int RISC_WRITE ;
 int SNDRV_DMA_TYPE_DEV ;
 void* cpu_to_le32 (unsigned int) ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int ,TYPE_1__*) ;
 int snd_dma_pci_data (int ) ;
 unsigned int snd_pcm_sgbuf_get_addr (struct snd_pcm_substream*,unsigned int) ;

__attribute__((used)) static int snd_bt87x_create_risc(struct snd_bt87x *chip, struct snd_pcm_substream *substream,
            unsigned int periods, unsigned int period_bytes)
{
 unsigned int i, offset;
 __le32 *risc;

 if (chip->dma_risc.area == ((void*)0)) {
  if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
     PAGE_ALIGN(MAX_RISC_SIZE), &chip->dma_risc) < 0)
   return -ENOMEM;
 }
 risc = (__le32 *)chip->dma_risc.area;
 offset = 0;
 *risc++ = cpu_to_le32(RISC_SYNC | RISC_SYNC_FM1);
 *risc++ = cpu_to_le32(0);
 for (i = 0; i < periods; ++i) {
  u32 rest;

  rest = period_bytes;
  do {
   u32 cmd, len;
   unsigned int addr;

   len = PAGE_SIZE - (offset % PAGE_SIZE);
   if (len > rest)
    len = rest;
   cmd = RISC_WRITE | len;
   if (rest == period_bytes) {
    u32 block = i * 16 / periods;
    cmd |= RISC_SOL;
    cmd |= block << RISC_SET_STATUS_SHIFT;
    cmd |= (~block & 0xf) << RISC_RESET_STATUS_SHIFT;
   }
   if (len == rest)
    cmd |= RISC_EOL | RISC_IRQ;
   *risc++ = cpu_to_le32(cmd);
   addr = snd_pcm_sgbuf_get_addr(substream, offset);
   *risc++ = cpu_to_le32(addr);
   offset += len;
   rest -= len;
  } while (rest > 0);
 }
 *risc++ = cpu_to_le32(RISC_SYNC | RISC_SYNC_VRO);
 *risc++ = cpu_to_le32(0);
 *risc++ = cpu_to_le32(RISC_JUMP);
 *risc++ = cpu_to_le32(chip->dma_risc.addr);
 chip->line_bytes = period_bytes;
 chip->lines = periods;
 return 0;
}
