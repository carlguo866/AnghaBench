
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int id; int pd_gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int DMA_PACKET (int ,int ,int ,int ) ;
 int DMA_PACKET_SRBM_WRITE ;
 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void cayman_dma_vm_flush(struct radeon_device *rdev, int ridx, struct radeon_vm *vm)
{
 struct radeon_ring *ring = &rdev->ring[ridx];

 if (vm == ((void*)0))
  return;

 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | ((VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm->id << 2)) >> 2));
 radeon_ring_write(ring, vm->pd_gpu_addr >> 12);


 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | (HDP_MEM_COHERENCY_FLUSH_CNTL >> 2));
 radeon_ring_write(ring, 1);


 radeon_ring_write(ring, DMA_PACKET(DMA_PACKET_SRBM_WRITE, 0, 0, 0));
 radeon_ring_write(ring, (0xf << 16) | (VM_INVALIDATE_REQUEST >> 2));
 radeon_ring_write(ring, 1 << vm->id);
}
