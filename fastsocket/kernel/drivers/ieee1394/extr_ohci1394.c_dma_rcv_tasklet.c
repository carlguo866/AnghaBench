
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_ohci {int host; int no_swap_incoming; } ;
struct dma_rcv_ctx {unsigned int buf_ind; unsigned int buf_offset; int** buf_cpu; unsigned int buf_size; int ctx; int split_buf_size; unsigned int num_desc; char* spb; int lock; TYPE_1__** prg_cpu; int ctrlClear; scalar_t__ ohci; } ;
typedef int quadlet_t ;
struct TYPE_2__ {int status; } ;


 int DBGMSG (char*,...) ;
 int KERN_DEBUG ;
 int KERN_INFO ;
 unsigned char OHCI1394_TCODE_PHY ;
 int PRINT (int ,char*,...) ;
 int cond_le32_to_cpu (int,int ) ;
 int header_le32_to_cpu (char*,unsigned char) ;
 int hpsb_packet_received (int ,int*,int,int) ;
 int insert_dma_buffer (struct dma_rcv_ctx*,unsigned int) ;
 int le32_to_cpu (int ) ;
 int memcpy (char*,int*,int) ;
 int ohci1394_stop_context (struct ti_ohci*,int ,char*) ;
 int packet_length (struct dma_rcv_ctx*,unsigned int,int*,unsigned int,unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,unsigned char,int,int,int) ;

__attribute__((used)) static void dma_rcv_tasklet (unsigned long data)
{
 struct dma_rcv_ctx *d = (struct dma_rcv_ctx*)data;
 struct ti_ohci *ohci = (struct ti_ohci*)(d->ohci);
 unsigned int split_left, idx, offset, rescount;
 unsigned char tcode;
 int length, bytes_left, ack;
 unsigned long flags;
 quadlet_t *buf_ptr;
 char *split_ptr;
 char msg[256];

 spin_lock_irqsave(&d->lock, flags);

 idx = d->buf_ind;
 offset = d->buf_offset;
 buf_ptr = d->buf_cpu[idx] + offset/4;

 rescount = le32_to_cpu(d->prg_cpu[idx]->status) & 0xffff;
 bytes_left = d->buf_size - rescount - offset;

 while (bytes_left > 0) {
  tcode = (cond_le32_to_cpu(buf_ptr[0], ohci->no_swap_incoming) >> 4) & 0xf;


  length = packet_length(d, idx, buf_ptr, offset, tcode, ohci->no_swap_incoming);

  if (length < 4) {
   sprintf(msg,"Unexpected tcode 0x%x(0x%08x) in AR ctx=%d, length=%d",
    tcode, cond_le32_to_cpu(buf_ptr[0], ohci->no_swap_incoming),
    d->ctx, length);
   ohci1394_stop_context(ohci, d->ctrlClear, msg);
   spin_unlock_irqrestore(&d->lock, flags);
   return;
  }




  if ((offset + length) > d->buf_size) {
   DBGMSG("Split packet rcv'd");
   if (length > d->split_buf_size) {
    ohci1394_stop_context(ohci, d->ctrlClear,
          "Split packet size exceeded");
    d->buf_ind = idx;
    d->buf_offset = offset;
    spin_unlock_irqrestore(&d->lock, flags);
    return;
   }

   if (le32_to_cpu(d->prg_cpu[(idx+1)%d->num_desc]->status)
       == d->buf_size) {



    PRINT(KERN_INFO,
          "Got only half a packet!");
    d->buf_ind = idx;
    d->buf_offset = offset;
    spin_unlock_irqrestore(&d->lock, flags);
    return;
   }

   split_left = length;
   split_ptr = (char *)d->spb;
   memcpy(split_ptr,buf_ptr,d->buf_size-offset);
   split_left -= d->buf_size-offset;
   split_ptr += d->buf_size-offset;
   insert_dma_buffer(d, idx);
   idx = (idx+1) % d->num_desc;
   buf_ptr = d->buf_cpu[idx];
   offset=0;

   while (split_left >= d->buf_size) {
    memcpy(split_ptr,buf_ptr,d->buf_size);
    split_ptr += d->buf_size;
    split_left -= d->buf_size;
    insert_dma_buffer(d, idx);
    idx = (idx+1) % d->num_desc;
    buf_ptr = d->buf_cpu[idx];
   }

   if (split_left > 0) {
    memcpy(split_ptr, buf_ptr, split_left);
    offset = split_left;
    buf_ptr += offset/4;
   }
  } else {
   DBGMSG("Single packet rcv'd");
   memcpy(d->spb, buf_ptr, length);
   offset += length;
   buf_ptr += length/4;
   if (offset==d->buf_size) {
    insert_dma_buffer(d, idx);
    idx = (idx+1) % d->num_desc;
    buf_ptr = d->buf_cpu[idx];
    offset=0;
   }
  }



  if (tcode != OHCI1394_TCODE_PHY) {
   if (!ohci->no_swap_incoming)
    header_le32_to_cpu(d->spb, tcode);
   DBGMSG("Packet received from node"
    " %d ack=0x%02X spd=%d tcode=0x%X"
    " length=%d ctx=%d tlabel=%d",
    (d->spb[1]>>16)&0x3f,
    (cond_le32_to_cpu(d->spb[length/4-1], ohci->no_swap_incoming)>>16)&0x1f,
    (cond_le32_to_cpu(d->spb[length/4-1], ohci->no_swap_incoming)>>21)&0x3,
    tcode, length, d->ctx,
    (d->spb[0]>>10)&0x3f);

   ack = (((cond_le32_to_cpu(d->spb[length/4-1], ohci->no_swap_incoming)>>16)&0x1f)
    == 0x11) ? 1 : 0;

   hpsb_packet_received(ohci->host, d->spb,
          length-4, ack);
  }






         rescount = le32_to_cpu(d->prg_cpu[idx]->status) & 0xffff;

  bytes_left = d->buf_size - rescount - offset;

 }

 d->buf_ind = idx;
 d->buf_offset = offset;

 spin_unlock_irqrestore(&d->lock, flags);
}
