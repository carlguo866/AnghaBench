
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mantis_pci {scalar_t__ buf_dma; scalar_t__ risc_dma; } ;


 int MANTIS_BLOCK_BYTES ;
 scalar_t__ MANTIS_BLOCK_COUNT ;
 int MANTIS_DEBUG ;
 scalar_t__ MANTIS_DMA_TR_BYTES ;
 scalar_t__ MANTIS_DMA_TR_UNITS ;
 int RISC_FLUSH (scalar_t__) ;
 int RISC_INSTR (scalar_t__,scalar_t__) ;
 scalar_t__ RISC_IRQ ;
 scalar_t__ RISC_JUMP ;
 scalar_t__ RISC_STATUS (scalar_t__) ;
 scalar_t__ RISC_WRITE ;
 int dprintk (int ,int,char*,...) ;

__attribute__((used)) static inline void mantis_risc_program(struct mantis_pci *mantis)
{
 u32 buf_pos = 0;
 u32 line, step;
 u32 risc_pos;

 dprintk(MANTIS_DEBUG, 1, "Mantis create RISC program");
 RISC_FLUSH(risc_pos);

 dprintk(MANTIS_DEBUG, 1, "risc len lines %u, bytes per line %u, bytes per DMA tr %u",
  MANTIS_BLOCK_COUNT, MANTIS_BLOCK_BYTES, MANTIS_DMA_TR_BYTES);

 for (line = 0; line < MANTIS_BLOCK_COUNT; line++) {
  for (step = 0; step < MANTIS_DMA_TR_UNITS; step++) {
   dprintk(MANTIS_DEBUG, 1, "RISC PROG line=[%d], step=[%d]", line, step);
   if (step == 0) {
    RISC_INSTR(risc_pos, RISC_WRITE |
        RISC_IRQ |
        RISC_STATUS(line) |
        MANTIS_DMA_TR_BYTES);
   } else {
    RISC_INSTR(risc_pos, RISC_WRITE | MANTIS_DMA_TR_BYTES);
   }
   RISC_INSTR(risc_pos, mantis->buf_dma + buf_pos);
   buf_pos += MANTIS_DMA_TR_BYTES;
    }
 }
 RISC_INSTR(risc_pos, RISC_JUMP);
 RISC_INSTR(risc_pos, mantis->risc_dma);
}
