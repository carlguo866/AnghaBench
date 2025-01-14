
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ngene {TYPE_2__* channel; int PAOverflowBuffer; int pci_dev; TYPE_1__* card_info; int OverflowBuffer; scalar_t__ FWInterfaceBuffer; scalar_t__ EventBuffer; scalar_t__ ngenetohost; scalar_t__ hosttongene; int PAFWInterfaceBuffer; } ;
struct TYPE_4__ {int TSRingBuffer; int TSIdleBuffer; int RingBuffer; int State; } ;
struct TYPE_3__ {int* io_type; } ;


 int AllocateRingBuffers (int ,int ,int *,int ,int ) ;
 int * Buffer1Sizes ;
 int * Buffer2Sizes ;
 int ENOMEM ;
 int FillTSIdleBuffer (int *,int *) ;
 int KSSTATE_STOP ;
 int MAX_HDTV_BUFFER_SIZE ;
 int MAX_STREAM ;
 int MAX_TS_BUFFER_SIZE ;
 int NGENE_IO_AIN ;
 int NGENE_IO_HDTV ;
 int NGENE_IO_TSIN ;
 int NGENE_IO_TSOUT ;
 int NGENE_IO_TV ;
 int OVERFLOW_BUFFER_SIZE ;
 int RING_SIZE_TS ;
 int* RingBufferSizes ;
 int STREAM_VIDEOIN1 ;
 int create_ring_buffer (int ,int *,int) ;
 scalar_t__ pci_alloc_consistent (int ,int,int *) ;
 int pci_zalloc_consistent (int ,int ,int *) ;

__attribute__((used)) static int AllocCommonBuffers(struct ngene *dev)
{
 int status = 0, i;

 dev->FWInterfaceBuffer = pci_alloc_consistent(dev->pci_dev, 4096,
           &dev->PAFWInterfaceBuffer);
 if (!dev->FWInterfaceBuffer)
  return -ENOMEM;
 dev->hosttongene = dev->FWInterfaceBuffer;
 dev->ngenetohost = dev->FWInterfaceBuffer + 256;
 dev->EventBuffer = dev->FWInterfaceBuffer + 512;

 dev->OverflowBuffer = pci_zalloc_consistent(dev->pci_dev,
          OVERFLOW_BUFFER_SIZE,
          &dev->PAOverflowBuffer);
 if (!dev->OverflowBuffer)
  return -ENOMEM;

 for (i = STREAM_VIDEOIN1; i < MAX_STREAM; i++) {
  int type = dev->card_info->io_type[i];

  dev->channel[i].State = KSSTATE_STOP;

  if (type & (NGENE_IO_TV | NGENE_IO_HDTV | NGENE_IO_AIN)) {
   status = create_ring_buffer(dev->pci_dev,
          &dev->channel[i].RingBuffer,
          RingBufferSizes[i]);
   if (status < 0)
    break;

   if (type & (NGENE_IO_TV | NGENE_IO_AIN)) {
    status = AllocateRingBuffers(dev->pci_dev,
            dev->
            PAOverflowBuffer,
            &dev->channel[i].
            RingBuffer,
            Buffer1Sizes[i],
            Buffer2Sizes[i]);
    if (status < 0)
     break;
   } else if (type & NGENE_IO_HDTV) {
    status = AllocateRingBuffers(dev->pci_dev,
            dev->
            PAOverflowBuffer,
            &dev->channel[i].
            RingBuffer,
          MAX_HDTV_BUFFER_SIZE,
            0);
    if (status < 0)
     break;
   }
  }

  if (type & (NGENE_IO_TSIN | NGENE_IO_TSOUT)) {

   status = create_ring_buffer(dev->pci_dev,
          &dev->channel[i].
          TSRingBuffer, RING_SIZE_TS);
   if (status < 0)
    break;

   status = AllocateRingBuffers(dev->pci_dev,
           dev->PAOverflowBuffer,
           &dev->channel[i].
           TSRingBuffer,
           MAX_TS_BUFFER_SIZE, 0);
   if (status)
    break;
  }

  if (type & NGENE_IO_TSOUT) {
   status = create_ring_buffer(dev->pci_dev,
          &dev->channel[i].
          TSIdleBuffer, 1);
   if (status < 0)
    break;
   status = AllocateRingBuffers(dev->pci_dev,
           dev->PAOverflowBuffer,
           &dev->channel[i].
           TSIdleBuffer,
           MAX_TS_BUFFER_SIZE, 0);
   if (status)
    break;
   FillTSIdleBuffer(&dev->channel[i].TSIdleBuffer,
      &dev->channel[i].TSRingBuffer);
  }
 }
 return status;
}
