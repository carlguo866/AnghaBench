
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_wka_port {int handle; TYPE_1__* adapter; } ;
struct zfcp_qdio {int req_q_lock; TYPE_3__* adapter; } ;
struct zfcp_fsf_req {TYPE_5__* qtcb; struct zfcp_wka_port* data; int handler; int queue_req; int status; } ;
struct qdio_buffer_element {int eflags; int sflags; } ;
struct TYPE_9__ {int port_handle; } ;
struct TYPE_10__ {TYPE_4__ header; } ;
struct TYPE_7__ {int erp_req; } ;
struct TYPE_8__ {TYPE_2__ pool; } ;
struct TYPE_6__ {struct zfcp_qdio* qdio; } ;


 int EIO ;
 int FSF_QTCB_CLOSE_PORT ;
 int IS_ERR (struct zfcp_fsf_req*) ;
 int PTR_ERR (struct zfcp_fsf_req*) ;
 int SBAL_EFLAGS_LAST_ENTRY ;
 int SBAL_SFLAGS0_TYPE_READ ;
 int ZFCP_FSF_REQUEST_TIMEOUT ;
 int ZFCP_STATUS_FSFREQ_CLEANUP ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int ) ;
 int zfcp_fsf_close_wka_port_handler ;
 struct zfcp_fsf_req* zfcp_fsf_req_create (struct zfcp_qdio*,int ,int ) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 scalar_t__ zfcp_fsf_req_sbal_get (struct zfcp_qdio*) ;
 int zfcp_fsf_req_send (struct zfcp_fsf_req*) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,int ) ;
 struct qdio_buffer_element* zfcp_qdio_sbale_req (struct zfcp_qdio*,int *) ;

int zfcp_fsf_close_wka_port(struct zfcp_wka_port *wka_port)
{
 struct qdio_buffer_element *sbale;
 struct zfcp_qdio *qdio = wka_port->adapter->qdio;
 struct zfcp_fsf_req *req;
 int retval = -EIO;

 spin_lock_bh(&qdio->req_q_lock);
 if (zfcp_fsf_req_sbal_get(qdio))
  goto out;

 req = zfcp_fsf_req_create(qdio, FSF_QTCB_CLOSE_PORT,
      qdio->adapter->pool.erp_req);

 if (unlikely(IS_ERR(req))) {
  retval = PTR_ERR(req);
  goto out;
 }

 req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
 sbale = zfcp_qdio_sbale_req(qdio, &req->queue_req);
 sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
 sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

 req->handler = zfcp_fsf_close_wka_port_handler;
 req->data = wka_port;
 req->qtcb->header.port_handle = wka_port->handle;

 zfcp_fsf_start_timer(req, ZFCP_FSF_REQUEST_TIMEOUT);
 retval = zfcp_fsf_req_send(req);
 if (retval)
  zfcp_fsf_req_free(req);
out:
 spin_unlock_bh(&qdio->req_q_lock);
 return retval;
}
