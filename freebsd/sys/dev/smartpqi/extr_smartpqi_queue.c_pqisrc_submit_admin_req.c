
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int uint16_t ;
struct TYPE_19__ {int* pi_virt_addr; int ci_local; int elem_size; int num_elem; int ci_register_offset; int ci_register_abs; scalar_t__ array_virt_addr; } ;
struct TYPE_18__ {int taglist; TYPE_12__* rcb; int admin_ib_queue; TYPE_4__ admin_ob_queue; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
typedef TYPE_4__ ob_queue_t ;
typedef int ib_queue_t ;
struct TYPE_17__ {scalar_t__ iu_type; } ;
struct TYPE_20__ {scalar_t__ fn_code; int status; TYPE_2__ header; } ;
typedef TYPE_5__ gen_adm_resp_iu_t ;
struct TYPE_16__ {int comp_feature; int iu_length; int iu_type; } ;
struct TYPE_21__ {size_t req_id; scalar_t__ fn_code; scalar_t__ work; scalar_t__ res1; TYPE_1__ header; } ;
typedef TYPE_6__ gen_adm_req_iu_t ;
struct TYPE_15__ {size_t tag; } ;


 int ASSERT (int) ;
 int COND_WAIT (int,int) ;
 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*,...) ;
 size_t INVALID_ELEM ;
 int LE_32 (int) ;
 int PCI_MEM_PUT32 (TYPE_3__*,int ,int ,int ) ;
 int PQISRC_ADMIN_CMD_RESP_TIMEOUT ;
 int PQI_IU_TYPE_GENERAL_ADMIN_REQUEST ;
 scalar_t__ PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE ;
 int PQI_STANDARD_IU_LENGTH ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int PQI_STATUS_TIMEOUT ;
 int memcpy (TYPE_5__*,scalar_t__,int) ;
 int os_reset_rcb (TYPE_12__*) ;
 size_t pqisrc_get_tag (int *) ;
 int pqisrc_put_tag (int *,size_t) ;
 int pqisrc_submit_cmnd (TYPE_3__*,int *,TYPE_6__*) ;

int pqisrc_submit_admin_req(pqisrc_softstate_t *softs,
   gen_adm_req_iu_t *req, gen_adm_resp_iu_t *resp)
{
 int ret = PQI_STATUS_SUCCESS;
 ob_queue_t *ob_q = &softs->admin_ob_queue;
 ib_queue_t *ib_q = &softs->admin_ib_queue;
 int tmo = PQISRC_ADMIN_CMD_RESP_TIMEOUT;

 DBG_FUNC("IN\n");

 req->header.iu_type =
  PQI_IU_TYPE_GENERAL_ADMIN_REQUEST;
 req->header.comp_feature = 0x00;
 req->header.iu_length = PQI_STANDARD_IU_LENGTH;
 req->res1 = 0;
 req->work = 0;


 req->req_id = pqisrc_get_tag(&softs->taglist);
 if (INVALID_ELEM == req->req_id) {
  DBG_ERR("Tag not available0x%x\n",(uint16_t)req->req_id);
  ret = PQI_STATUS_FAILURE;
  goto err_out;
 }
 softs->rcb[req->req_id].tag = req->req_id;


 ret = pqisrc_submit_cmnd(softs, ib_q, req);
 if (ret != PQI_STATUS_SUCCESS) {
  DBG_ERR("Unable to submit command\n");
  goto err_cmd;
 }


 COND_WAIT((*(ob_q->pi_virt_addr) != ob_q->ci_local), tmo);
 if (tmo <= 0) {
  DBG_ERR("Admin cmd timeout\n");
  DBG_ERR("tmo : %d\n",tmo); ret = PQI_STATUS_TIMEOUT;

  goto err_cmd;
 }


 memcpy(resp, ob_q->array_virt_addr + (ob_q->ci_local * ob_q->elem_size),
     sizeof(gen_adm_resp_iu_t));


 ob_q->ci_local = (ob_q->ci_local + 1 ) % ob_q->num_elem;
 PCI_MEM_PUT32(softs, ob_q->ci_register_abs,
        ob_q->ci_register_offset, LE_32(ob_q->ci_local));


 ASSERT(req->fn_code == resp->fn_code);
 ASSERT(resp->header.iu_type == PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE);
 ret = resp->status;
 if (ret)
  goto err_cmd;

 os_reset_rcb(&softs->rcb[req->req_id]);
 pqisrc_put_tag(&softs->taglist,req->req_id);
 DBG_FUNC("OUT\n");
 return ret;
err_cmd:
 os_reset_rcb(&softs->rcb[req->req_id]);
 pqisrc_put_tag(&softs->taglist,req->req_id);
err_out:
 DBG_FUNC("failed OUT : %d\n", ret);
 return ret;
}
