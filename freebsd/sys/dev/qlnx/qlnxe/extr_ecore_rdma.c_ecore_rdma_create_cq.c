
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct rdma_create_cq_ramrod_data {int toggle_bit; int int_timeout; scalar_t__ cnq_id; void* pbl_num_pages; int pbl_addr; void* max_cqes; int is_two_level_pbl; void* dpi; TYPE_3__ cq_handle; } ;
struct TYPE_5__ {struct rdma_create_cq_ramrod_data rdma_create_cq; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; scalar_t__ cid; } ;
struct ecore_rdma_info {int lock; int cq_map; int proto; } ;
struct ecore_rdma_create_cq_in_params {int int_timeout; scalar_t__ cnq_id; int pbl_num_pages; int pbl_ptr; int cq_size; int pbl_two_level; int dpi; int cq_handle_lo; int cq_handle_hi; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; struct ecore_rdma_info* p_rdma_info; } ;
typedef int init_data ;
typedef enum ecore_rdma_toggle_bit { ____Placeholder_ecore_rdma_toggle_bit } ecore_rdma_toggle_bit ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,...) ;
 int ECORE_ELEM_CXT ;
 int ECORE_MSG_RDMA ;
 int ECORE_RDMA_CNQ_RAM ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 void* OSAL_CPU_TO_LE32 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int RDMA_RAMROD_CREATE_CQ ;
 scalar_t__ RESC_START (struct ecore_hwfn*,int ) ;
 int ecore_bmap_release_id (struct ecore_hwfn*,int *,scalar_t__) ;
 int ecore_cxt_dynamic_ilt_alloc (struct ecore_hwfn*,int ,scalar_t__) ;
 scalar_t__ ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_rdma_bmap_alloc_id (struct ecore_hwfn*,int *,scalar_t__*) ;
 int ecore_rdma_toggle_bit_create_resize_cq (struct ecore_hwfn*,scalar_t__) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

enum _ecore_status_t ecore_rdma_create_cq(void *rdma_cxt,
    struct ecore_rdma_create_cq_in_params *params,
    u16 *icid)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct ecore_rdma_info *p_info = p_hwfn->p_rdma_info;
 struct rdma_create_cq_ramrod_data *p_ramrod;
 enum ecore_rdma_toggle_bit toggle_bit;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;
 u32 returned_id;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "cq_handle = %08x%08x\n",
     params->cq_handle_hi, params->cq_handle_lo);


 OSAL_SPIN_LOCK(&p_info->lock);
 rc = ecore_rdma_bmap_alloc_id(p_hwfn, &p_info->cq_map, &returned_id);
 OSAL_SPIN_UNLOCK(&p_info->lock);

 if (rc != ECORE_SUCCESS)
 {
  DP_NOTICE(p_hwfn, 0, "Can't create CQ, rc = %d\n", rc);
  return rc;
 }

 *icid = (u16)(returned_id +
        ecore_cxt_get_proto_cid_start(
         p_hwfn, p_info->proto));


 rc = ecore_cxt_dynamic_ilt_alloc(p_hwfn, ECORE_ELEM_CXT, *icid);
 if (rc != ECORE_SUCCESS)
  goto err;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = *icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;


 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       RDMA_RAMROD_CREATE_CQ,
       p_info->proto, &init_data);
 if (rc != ECORE_SUCCESS)
  goto err;

 p_ramrod = &p_ent->ramrod.rdma_create_cq;

 p_ramrod->cq_handle.hi = OSAL_CPU_TO_LE32(params->cq_handle_hi);
 p_ramrod->cq_handle.lo = OSAL_CPU_TO_LE32(params->cq_handle_lo);
 p_ramrod->dpi = OSAL_CPU_TO_LE16(params->dpi);
 p_ramrod->is_two_level_pbl = params->pbl_two_level;
 p_ramrod->max_cqes = OSAL_CPU_TO_LE32(params->cq_size);
 DMA_REGPAIR_LE(p_ramrod->pbl_addr, params->pbl_ptr);
 p_ramrod->pbl_num_pages = OSAL_CPU_TO_LE16(params->pbl_num_pages);
 p_ramrod->cnq_id = (u8)RESC_START(p_hwfn, ECORE_RDMA_CNQ_RAM)
   + params->cnq_id;
 p_ramrod->int_timeout = params->int_timeout;




 toggle_bit = ecore_rdma_toggle_bit_create_resize_cq(p_hwfn, *icid);

 p_ramrod->toggle_bit = toggle_bit;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
 if (rc != ECORE_SUCCESS) {

  ecore_rdma_toggle_bit_create_resize_cq(p_hwfn, *icid);
  goto err;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Created CQ, rc = %d\n", rc);
 return rc;

err:

 OSAL_SPIN_LOCK(&p_info->lock);
 ecore_bmap_release_id(p_hwfn, &p_info->cq_map, returned_id);
 OSAL_SPIN_UNLOCK(&p_info->lock);

 DP_NOTICE(p_hwfn, 0, "Create CQ failed, rc = %d\n", rc);

 return rc;
}
