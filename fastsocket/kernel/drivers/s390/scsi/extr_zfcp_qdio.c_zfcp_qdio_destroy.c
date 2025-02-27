
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct qdio_buffer** sbal; } ;
struct TYPE_6__ {struct qdio_buffer** sbal; } ;
struct zfcp_qdio {TYPE_1__ resp_q; TYPE_3__ req_q; TYPE_2__* adapter; } ;
struct qdio_buffer {int dummy; } ;
struct TYPE_5__ {scalar_t__ ccw_device; } ;


 scalar_t__ QBUFF_PER_PAGE ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 int free_page (unsigned long) ;
 int kfree (struct zfcp_qdio*) ;
 int qdio_free (scalar_t__) ;

void zfcp_qdio_destroy(struct zfcp_qdio *qdio)
{
 struct qdio_buffer **sbal_req, **sbal_resp;
 int p;

 if (!qdio)
  return;

 if (qdio->adapter->ccw_device)
  qdio_free(qdio->adapter->ccw_device);

 sbal_req = qdio->req_q.sbal;
 sbal_resp = qdio->resp_q.sbal;

 for (p = 0; p < QDIO_MAX_BUFFERS_PER_Q; p += QBUFF_PER_PAGE) {
  free_page((unsigned long) sbal_req[p]);
  free_page((unsigned long) sbal_resp[p]);
 }

 kfree(qdio);
}
