
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_4__ {int rx; int parity; int frame; int brk; } ;
struct TYPE_3__ {int flags; struct tty_struct* tty; } ;
struct esp_struct {int read_status_mask; int ignore_status_mask; TYPE_2__ icount; TYPE_1__ port; int stat_flags; } ;


 int ASYNC_SAK ;
 int ESP_STAT_DMA_RX ;
 int TTY_BREAK ;
 int TTY_FRAME ;
 int TTY_PARITY ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int dma ;
 int * dma_buffer ;
 int dma_bytes ;
 int do_SAK (struct tty_struct*) ;
 int get_dma_residue (int ) ;
 int receive_chars_dma (struct esp_struct*,int) ;
 int release_dma_lock (unsigned long) ;
 int tty_insert_flip_char (struct tty_struct*,int ,int) ;
 int tty_insert_flip_string (struct tty_struct*,int *,int) ;
 int tty_schedule_flip (struct tty_struct*) ;

__attribute__((used)) static inline void receive_chars_dma_done(struct esp_struct *info,
         int status)
{
 struct tty_struct *tty = info->port.tty;
 int num_bytes;
 unsigned long flags;

 flags = claim_dma_lock();
 disable_dma(dma);
 clear_dma_ff(dma);

 info->stat_flags &= ~ESP_STAT_DMA_RX;
 num_bytes = dma_bytes - get_dma_residue(dma);
 release_dma_lock(flags);

 info->icount.rx += num_bytes;

 if (num_bytes > 0) {
  tty_insert_flip_string(tty, dma_buffer, num_bytes - 1);

  status &= (0x1c & info->read_status_mask);


  if (!(status & info->ignore_status_mask)) {
   int statflag = 0;

   if (status & 0x10) {
    statflag = TTY_BREAK;
    (info->icount.brk)++;
    if (info->port.flags & ASYNC_SAK)
     do_SAK(tty);
   } else if (status & 0x08) {
    statflag = TTY_FRAME;
    info->icount.frame++;
   } else if (status & 0x04) {
    statflag = TTY_PARITY;
    info->icount.parity++;
   }
   tty_insert_flip_char(tty, dma_buffer[num_bytes - 1],
        statflag);
  }
  tty_schedule_flip(tty);
 }

 if (dma_bytes != num_bytes) {
  num_bytes = dma_bytes - num_bytes;
  dma_bytes = 0;
  receive_chars_dma(info, num_bytes);
 } else
  dma_bytes = 0;
}
