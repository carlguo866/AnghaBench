
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int baddr; scalar_t__ vaddr; } ;
typedef TYPE_1__ m_vtob_s ;
struct TYPE_7__ {int nump; TYPE_1__** vtob; int bush; } ;
typedef TYPE_2__ m_pool_s ;
typedef scalar_t__ m_addr_t ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int MEMO_PAGE_ORDER ;
 int PAGE_SIZE ;
 int VTOB_HASH_CODE (scalar_t__) ;
 TYPE_1__* __m_calloc (int *,int,char*) ;
 int __m_free (int *,TYPE_1__*,int,char*) ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;
 int mp0 ;

__attribute__((used)) static m_addr_t ___dma_getp(m_pool_s *mp)
{
 m_addr_t vp;
 m_vtob_s *vbp;

 vbp = __m_calloc(&mp0, sizeof(*vbp), "VTOB");
 if (vbp) {
  dma_addr_t daddr;
  vp = (m_addr_t) dma_alloc_coherent(mp->bush,
      PAGE_SIZE<<MEMO_PAGE_ORDER,
      &daddr, GFP_ATOMIC);
  if (vp) {
   int hc = VTOB_HASH_CODE(vp);
   vbp->vaddr = vp;
   vbp->baddr = daddr;
   vbp->next = mp->vtob[hc];
   mp->vtob[hc] = vbp;
   ++mp->nump;
   return vp;
  }
 }
 if (vbp)
  __m_free(&mp0, vbp, sizeof(*vbp), "VTOB");
 return 0;
}
