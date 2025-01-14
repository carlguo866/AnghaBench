
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct octeon_soft_command {int node; int size; scalar_t__ dma_addr; } ;
struct TYPE_2__ {int head; int alloc_buf_count; int lock; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 int MAX_SOFT_COMMAND_BUFFERS ;
 int SOFT_COMMAND_BUFFER_SIZE ;
 int atomic_set (int *,int ) ;
 scalar_t__ lio_dma_alloc (struct octeon_device*,int ,int *) ;
 int list_add_tail (int *,int *) ;
 int octeon_free_sc_buffer_pool (struct octeon_device*) ;
 int spin_lock_init (int *) ;

int octeon_setup_sc_buffer_pool(struct octeon_device *oct)
{
 int i;
 u64 dma_addr;
 struct octeon_soft_command *sc;

 INIT_LIST_HEAD(&oct->sc_buf_pool.head);
 spin_lock_init(&oct->sc_buf_pool.lock);
 atomic_set(&oct->sc_buf_pool.alloc_buf_count, 0);

 for (i = 0; i < MAX_SOFT_COMMAND_BUFFERS; i++) {
  sc = (struct octeon_soft_command *)
   lio_dma_alloc(oct,
          SOFT_COMMAND_BUFFER_SIZE,
       (dma_addr_t *)&dma_addr);
  if (!sc) {
   octeon_free_sc_buffer_pool(oct);
   return 1;
  }

  sc->dma_addr = dma_addr;
  sc->size = SOFT_COMMAND_BUFFER_SIZE;

  list_add_tail(&sc->node, &oct->sc_buf_pool.head);
 }

 return 0;
}
