
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; TYPE_1__* adapter; } ;
struct zfcp_fsf_req {int completion; int handler; int queue_req; struct fsf_qtcb_bottom_port* data; } ;
struct qdio_buffer_element {int eflags; int sflags; } ;
struct fsf_qtcb_bottom_port {int dummy; } ;
struct TYPE_2__ {int adapter_features; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int FSF_FEATURE_HBAAPI_MANAGEMENT ;
 int FSF_QTCB_EXCHANGE_PORT_DATA ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_FSF_REQUEST_TIMEOUT ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;
 int zfcp_fsf_exchange_port_data_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;

int zfcp_fsf_exchange_port_data_sync(struct zfcp_qdio *qdio,
         struct fsf_qtcb_bottom_port *data)
{
 struct qdio_buffer_element *sbale;
 struct zfcp_fsf_req *req = ((void*)0);
 int retval = -EIO;

 if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
  return -EOPNOTSUPP;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out_unlock;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_EXCHANGE_PORT_DATA, ((void*)0));

 if (IS_ERR(req)) {
  retval = PTR_ERR(req);
  goto out_unlock;
 }

 if (data)
  req->data = data;

 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
 sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

 req->handler = zfcp_fsf_exchange_port_data_handler;
 zfcp_fsf_start_timer(req, ZFCP_FSF_REQUEST_TIMEOUT);
 retval = zfcp_fsf_req_send(req);
 spin_unlock_bh(&qdio->req_q_lock);

 if (!retval)
  wait_for_completion(&req->completion);

 zfcp_fsf_req_free(req);

 return retval;

out_unlock:
 spin_unlock_bh(&qdio->req_q_lock);
 return retval;
}
