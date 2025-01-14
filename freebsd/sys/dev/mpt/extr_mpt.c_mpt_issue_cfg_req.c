
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct mpt_softc {int dummy; } ;
struct TYPE_14__ {int index; TYPE_5__* req_vbuf; } ;
typedef TYPE_2__ request_t ;
struct TYPE_15__ {scalar_t__ Action; int PageAddress; int PageType; scalar_t__ PageLength; int ExtPageType; int ExtPageLength; int PageNumber; int PageVersion; } ;
typedef TYPE_3__ cfgparms_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;
struct TYPE_13__ {int PageType; scalar_t__ PageLength; int PageNumber; int PageVersion; } ;
struct TYPE_17__ {scalar_t__ Action; void* MsgContext; int PageBufferSGE; TYPE_1__ Header; int ExtPageType; int ExtPageLength; void* PageAddress; int Function; } ;
struct TYPE_16__ {int FlagsLength; void* Address; } ;
typedef TYPE_4__ SGE_SIMPLE32 ;
typedef TYPE_5__ MSG_CONFIG ;


 scalar_t__ MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT ;
 scalar_t__ MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_CONFIG_PAGETYPE_MASK ;
 int MPI_FUNCTION_CONFIG ;
 int MPI_SGE_FLAGS_END_OF_BUFFER ;
 int MPI_SGE_FLAGS_END_OF_LIST ;
 int MPI_SGE_FLAGS_HOST_TO_IOC ;
 int MPI_SGE_FLAGS_IOC_TO_HOST ;
 int MPI_SGE_FLAGS_LAST_ELEMENT ;
 int MPI_SGE_FLAGS_SIMPLE_ELEMENT ;
 int MPI_pSGE_SET_FLAGS (TYPE_4__*,int) ;
 int MPI_pSGE_SET_LENGTH (TYPE_4__*,int ) ;
 int MPT_REPLY_HANDLER_CONFIG ;
 int REQ_STATE_DONE ;
 int htole16 (int ) ;
 void* htole32 (int) ;
 int memset (TYPE_5__*,int ,int) ;
 int mpt_check_doorbell (struct mpt_softc*) ;
 int mpt_send_cmd (struct mpt_softc*,TYPE_2__*) ;
 int mpt_wait_req (struct mpt_softc*,TYPE_2__*,int ,int ,int,int) ;

int
mpt_issue_cfg_req(struct mpt_softc *mpt, request_t *req, cfgparms_t *params,
    bus_addr_t addr, bus_size_t len, int sleep_ok, int timeout_ms)
{
 MSG_CONFIG *cfgp;
 SGE_SIMPLE32 *se;

 cfgp = req->req_vbuf;
 memset(cfgp, 0, sizeof *cfgp);
 cfgp->Action = params->Action;
 cfgp->Function = MPI_FUNCTION_CONFIG;
 cfgp->Header.PageVersion = params->PageVersion;
 cfgp->Header.PageNumber = params->PageNumber;
 cfgp->PageAddress = htole32(params->PageAddress);
 if ((params->PageType & MPI_CONFIG_PAGETYPE_MASK) ==
     MPI_CONFIG_PAGETYPE_EXTENDED) {
  cfgp->Header.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
  cfgp->Header.PageLength = 0;
  cfgp->ExtPageLength = htole16(params->ExtPageLength);
  cfgp->ExtPageType = params->ExtPageType;
 } else {
  cfgp->Header.PageType = params->PageType;
  cfgp->Header.PageLength = params->PageLength;
 }
 se = (SGE_SIMPLE32 *)&cfgp->PageBufferSGE;
 se->Address = htole32(addr);
 MPI_pSGE_SET_LENGTH(se, len);
 MPI_pSGE_SET_FLAGS(se, (MPI_SGE_FLAGS_SIMPLE_ELEMENT |
     MPI_SGE_FLAGS_LAST_ELEMENT | MPI_SGE_FLAGS_END_OF_BUFFER |
     MPI_SGE_FLAGS_END_OF_LIST |
     ((params->Action == MPI_CONFIG_ACTION_PAGE_WRITE_CURRENT
   || params->Action == MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM)
    ? MPI_SGE_FLAGS_HOST_TO_IOC : MPI_SGE_FLAGS_IOC_TO_HOST)));
 se->FlagsLength = htole32(se->FlagsLength);
 cfgp->MsgContext = htole32(req->index | MPT_REPLY_HANDLER_CONFIG);

 mpt_check_doorbell(mpt);
 mpt_send_cmd(mpt, req);
 return (mpt_wait_req(mpt, req, REQ_STATE_DONE, REQ_STATE_DONE,
        sleep_ok, timeout_ms));
}
