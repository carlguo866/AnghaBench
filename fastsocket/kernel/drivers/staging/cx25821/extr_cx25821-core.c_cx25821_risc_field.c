
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct scatterlist {int dummy; } ;
typedef int __le32 ;


 unsigned int NO_SYNC_LINE ;
 unsigned int RISC_EOL ;
 unsigned int RISC_RESYNC ;
 unsigned int RISC_SOL ;
 unsigned int RISC_WRITE ;
 void* cpu_to_le32 (unsigned int) ;
 unsigned int sg_dma_address (struct scatterlist*) ;
 unsigned int sg_dma_len (struct scatterlist*) ;

__attribute__((used)) static __le32 *cx25821_risc_field(__le32 * rp, struct scatterlist *sglist,
      unsigned int offset, u32 sync_line,
      unsigned int bpl, unsigned int padding,
      unsigned int lines)
{
 struct scatterlist *sg;
 unsigned int line, todo;


 if (sync_line != NO_SYNC_LINE) {
  *(rp++) = cpu_to_le32(RISC_RESYNC | sync_line);
 }


 sg = sglist;
 for (line = 0; line < lines; line++) {
  while (offset && offset >= sg_dma_len(sg)) {
   offset -= sg_dma_len(sg);
   sg++;
  }
  if (bpl <= sg_dma_len(sg) - offset) {

   *(rp++) =
       cpu_to_le32(RISC_WRITE | RISC_SOL | RISC_EOL | bpl);
   *(rp++) = cpu_to_le32(sg_dma_address(sg) + offset);
   *(rp++) = cpu_to_le32(0);
   offset += bpl;
  } else {

   todo = bpl;
   *(rp++) =
       cpu_to_le32(RISC_WRITE | RISC_SOL |
     (sg_dma_len(sg) - offset));
   *(rp++) = cpu_to_le32(sg_dma_address(sg) + offset);
   *(rp++) = cpu_to_le32(0);
   todo -= (sg_dma_len(sg) - offset);
   offset = 0;
   sg++;
   while (todo > sg_dma_len(sg)) {
    *(rp++) =
        cpu_to_le32(RISC_WRITE | sg_dma_len(sg));
    *(rp++) = cpu_to_le32(sg_dma_address(sg));
    *(rp++) = cpu_to_le32(0);
    todo -= sg_dma_len(sg);
    sg++;
   }
   *(rp++) = cpu_to_le32(RISC_WRITE | RISC_EOL | todo);
   *(rp++) = cpu_to_le32(sg_dma_address(sg));
   *(rp++) = cpu_to_le32(0);
   offset += todo;
  }

  offset += padding;
 }

 return rp;
}
