
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* m_vtob_p ;
typedef TYPE_2__* m_pool_p ;
typedef int m_pool_ident_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_5__ {TYPE_1__** vtob; } ;
struct TYPE_4__ {void* vaddr; scalar_t__ baddr; struct TYPE_4__* next; } ;


 unsigned long SYM_MEM_CLUSTER_MASK ;
 int VTOB_HASH_CODE (void*) ;
 TYPE_2__* ___get_dma_pool (int ) ;
 int panic (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sym53c8xx_lock ;

dma_addr_t __vtobus(m_pool_ident_t dev_dmat, void *m)
{
 unsigned long flags;
 m_pool_p mp;
 int hc = VTOB_HASH_CODE(m);
 m_vtob_p vp = ((void*)0);
 void *a = (void *)((unsigned long)m & ~SYM_MEM_CLUSTER_MASK);
 dma_addr_t b;

 spin_lock_irqsave(&sym53c8xx_lock, flags);
 mp = ___get_dma_pool(dev_dmat);
 if (mp) {
  vp = mp->vtob[hc];
  while (vp && vp->vaddr != a)
   vp = vp->next;
 }
 if (!vp)
  panic("sym: VTOBUS FAILED!\n");
 b = vp->baddr + (m - a);
 spin_unlock_irqrestore(&sym53c8xx_lock, flags);
 return b;
}
