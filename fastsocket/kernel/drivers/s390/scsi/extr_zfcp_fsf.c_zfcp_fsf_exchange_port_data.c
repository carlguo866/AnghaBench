
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {struct zfcp_erp_action* erp_action; int handler; int queue_req; int status; } ;
struct zfcp_erp_action {struct zfcp_fsf_req* fsf_req; TYPE_1__* adapter; } ;
struct qdio_buffer_element {int eflags; int sflags; } ;
struct TYPE_5__ {int erp_req; } ;
struct TYPE_6__ {int adapter_features; TYPE_2__ pool; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int FSF_FEATURE_HBAAPI_MANAGEMENT ;
 int FSF_QTCB_EXCHANGE_PORT_DATA ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int zfcp_fsf_exchange_port_data_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_erp_timer (struct zfcp_fsf_req*) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;

int zfcp_fsf_exchange_port_data(struct zfcp_erp_action *erp_action)
{
 struct zfcp_qdio *qdio = erp_action->adapter->qdio;
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
  return -EOPNOTSUPP;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_EXCHANGE_PORT_DATA,
      qdio->adapter->pool.erp_req);

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
 sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

 req->handler = zfcp_fsf_exchange_port_data_handler;
 req->erp_action = erp_action;
 erp_action->fsf_req = req;

 zfcp_fsf_start_erp_timer(req);
 retval = zfcp_fsf_req_send(req);
 if (retval) {
  zfcp_fsf_req_free(req);
  erp_action->fsf_req = ((void*)0);
 }
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return retval;
}
