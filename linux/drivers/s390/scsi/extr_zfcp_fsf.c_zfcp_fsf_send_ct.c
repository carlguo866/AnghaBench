
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_qdio {int req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_fsf_ct_els* data; TYPE_3__* qtcb; int handler; int status; } ;
struct zfcp_fsf_ct_els {int d_id; int resp; int req; } ;
struct zfcp_fc_wka_port {int d_id; int handle; TYPE_1__* adapter; } ;
typedef int mempool_t ;
struct TYPE_5__ {int port_handle; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_QTCB_SEND_GENERIC ;
 scalar_t__ IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_SFLAGS0_TYPE_WRITE_READ ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int zfcp_dbf_san_req (char*,struct zfcp_fsf_req*,int ) ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ,int *) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_ct_handler ;
 int zfcp_fsf_setup_ct_els (struct zfcp_fsf_req*,int ,int ,unsigned int) ;
 scalar_t__ zfcp_qdio_sbal_get (struct zfcp_qdio*) ;

int zfcp_fsf_send_ct(struct zfcp_fc_wka_port *wka_port,
       struct zfcp_fsf_ct_els *ct, mempool_t *pool,
       unsigned int timeout)
{
 struct zfcp_qdio *qdio = wka_port->adapter->qdio;
 struct zfcp_fsf_req *req;
 int ret = -EIO;

 spin_lock_irq(&qdio->req_q_lock);
 if (zfcp_qdio_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_SEND_GENERIC,
      SBAL_SFLAGS0_TYPE_WRITE_READ, pool);

 if (IS_ERR(req)) {
  ret = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 ret = zfcp_fsf_setup_ct_els(req, ct->req, ct->resp, timeout);
 if (ret)
  goto failed_send;

 req->handler = zfcp_fsf_send_ct_handler;
 req->qtcb->header.port_handle = wka_port->handle;
 ct->d_id = wka_port->d_id;
 req->data = ct;

 zfcp_dbf_san_req("fssct_1", req, wka_port->d_id);

 ret = zfcp_fsf_req_send(req);
 if (ret)
  goto failed_send;


 goto out;

failed_send:
 zfcp_fsf_req_free(req);
out:
 spin_unlock_irq(&qdio->req_q_lock);
 return ret;
}
