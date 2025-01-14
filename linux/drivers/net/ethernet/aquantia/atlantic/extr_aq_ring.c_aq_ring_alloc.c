
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_ring_s {int size; int dx_size; int dx_ring; int dx_ring_pa; int buff_ring; } ;
struct aq_ring_buff_s {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int aq_nic_get_dev (struct aq_nic_s*) ;
 int aq_ring_free (struct aq_ring_s*) ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int kcalloc (int,int,int ) ;

__attribute__((used)) static struct aq_ring_s *aq_ring_alloc(struct aq_ring_s *self,
           struct aq_nic_s *aq_nic)
{
 int err = 0;

 self->buff_ring =
  kcalloc(self->size, sizeof(struct aq_ring_buff_s), GFP_KERNEL);

 if (!self->buff_ring) {
  err = -ENOMEM;
  goto err_exit;
 }
 self->dx_ring = dma_alloc_coherent(aq_nic_get_dev(aq_nic),
        self->size * self->dx_size,
        &self->dx_ring_pa, GFP_KERNEL);
 if (!self->dx_ring) {
  err = -ENOMEM;
  goto err_exit;
 }

err_exit:
 if (err < 0) {
  aq_ring_free(self);
  self = ((void*)0);
 }
 return self;
}
