
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int length; int type; } ;
struct TYPE_5__ {int length; int response_code; int function_code; } ;
struct sclp_vt220_sccb {TYPE_3__ evbuf; TYPE_2__ header; } ;
struct TYPE_4__ {void* sccb; } ;
struct sclp_vt220_request {TYPE_1__ sclp_req; scalar_t__ retry_count; } ;
struct evbuf_header {int dummy; } ;
typedef scalar_t__ addr_t ;


 int EVTYP_VT220MSG ;
 scalar_t__ PAGE_SIZE ;
 int SCLP_NORMAL_WRITE ;
 int memset (void*,int ,int) ;

__attribute__((used)) static struct sclp_vt220_request *
sclp_vt220_initialize_page(void *page)
{
 struct sclp_vt220_request *request;
 struct sclp_vt220_sccb *sccb;


 request = ((struct sclp_vt220_request *)
   ((addr_t) page + PAGE_SIZE)) - 1;
 request->retry_count = 0;
 request->sclp_req.sccb = page;

 sccb = (struct sclp_vt220_sccb *) page;
 memset((void *) sccb, 0, sizeof(struct sclp_vt220_sccb));
 sccb->header.length = sizeof(struct sclp_vt220_sccb);
 sccb->header.function_code = SCLP_NORMAL_WRITE;
 sccb->header.response_code = 0x0000;
 sccb->evbuf.type = EVTYP_VT220MSG;
 sccb->evbuf.length = sizeof(struct evbuf_header);

 return request;
}
