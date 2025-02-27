
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int dpi_map; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_MSG_RDMA ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,int ) ;

void ecore_rdma_remove_user(void *rdma_cxt,
       u16 dpi)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "dpi = %08x\n", dpi);

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 ecore_bmap_release_id(p_hwfn, &p_hwfn->p_rdma_info->dpi_map, dpi);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
}
