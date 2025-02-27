
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_wka_port {int handle; TYPE_1__* adapter; } ;
struct zfcp_send_ct {int resp; int req; struct zfcp_wka_port* wka_port; } ;
struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_send_ct* data; TYPE_3__* qtcb; int handler; int status; } ;
typedef int mempool_t ;
struct TYPE_5__ {int port_handle; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_MAX_SBALS_PER_REQ ;
 int FSF_QTCB_SEND_GENERIC ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int zfcp_dbf_san_ct_request (struct zfcp_fsf_req*) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_ct_handler ;
 int zfcp_fsf_setup_ct_els (struct zfcp_fsf_req*,int ,int ,int ,unsigned int) ;

int zfcp_fsf_send_ct(struct zfcp_send_ct *ct, mempool_t *pool,
       unsigned int timeout)
{
 struct zfcp_wka_port *wka_port = ct->wka_port;
 struct zfcp_qdio *qdio = wka_port->adapter->qdio;
 struct zfcp_fsf_req *req;
 int ret = -EIO;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_SEND_GENERIC, pool);

 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 ret = zfcp_fsf_setup_ct_els(req, ct->req, ct->resp,
        FSF_MAX_SBALS_PER_REQ, timeout);
 if (ret)
  goto failed_send;

 req->handler = zfcp_fsf_send_ct_handler;
 req->qtcb->header.port_handle = wka_port->handle;
 req->data = ct;

 zfcp_dbf_san_ct_request(req);

 ret = zfcp_fsf_req_send(req);
 if (ret)
  goto failed_send;

 goto out;

failed_send:
 zfcp_fsf_req_free(req);
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return ret;
}
