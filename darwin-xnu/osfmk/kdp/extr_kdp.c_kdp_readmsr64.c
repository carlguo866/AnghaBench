
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int lcpu; int address; } ;
typedef TYPE_2__ kdp_readmsr64_req_t ;
struct TYPE_8__ {int is_reply; int len; } ;
struct TYPE_10__ {scalar_t__ error; TYPE_1__ hdr; int data; } ;
typedef TYPE_3__ kdp_readmsr64_reply_t ;
struct TYPE_11__ {TYPE_3__ readmsr64_reply; TYPE_2__ readmsr64_req; } ;
typedef TYPE_4__ kdp_pkt_t ;
typedef int boolean_t ;
struct TYPE_12__ {unsigned short reply_port; } ;


 int FALSE ;
 scalar_t__ KDPERR_NO_ERROR ;
 int TRUE ;
 int dprintf (char*) ;
 TYPE_7__ kdp ;
 scalar_t__ kdp_machine_msr64_read (TYPE_2__*,int ,int ) ;

__attribute__((used)) static boolean_t
kdp_readmsr64(
 kdp_pkt_t *pkt,
 int *len,
 unsigned short *reply_port
)
{
 kdp_readmsr64_req_t *rq = &pkt->readmsr64_req;
 kdp_readmsr64_reply_t *rp = &pkt->readmsr64_reply;
 size_t plen = *len;

 if (plen < sizeof (*rq))
  return (FALSE);

 rp->hdr.is_reply = 1;
 rp->hdr.len = sizeof (*rp);

 dprintf(("kdp_readmsr64 lcpu %x addr %x\n", rq->lcpu, rq->address));
 rp->error = kdp_machine_msr64_read(rq, rp->data, rq->lcpu);
 if (rp->error == KDPERR_NO_ERROR)
  rp->hdr.len += sizeof(uint64_t);

 *reply_port = kdp.reply_port;
 *len = rp->hdr.len;

 return (TRUE);
}
