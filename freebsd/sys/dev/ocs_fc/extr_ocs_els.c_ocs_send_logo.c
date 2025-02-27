
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef void* uint32_t ;
typedef int ocs_t ;
struct TYPE_21__ {TYPE_3__* sport; } ;
struct TYPE_24__ {TYPE_4__ rnode; TYPE_1__* sport; int * ocs; } ;
typedef TYPE_7__ ocs_node_t ;
struct TYPE_22__ {void* timeout; } ;
struct TYPE_23__ {TYPE_5__ els; } ;
struct TYPE_19__ {TYPE_10__* virt; } ;
struct TYPE_25__ {char* display_name; TYPE_6__ iparam; int hio_type; TYPE_2__ els_req; void* els_callback_arg; int els_callback; void* els_retries_remaining; void* els_timeout_sec; } ;
typedef TYPE_8__ ocs_io_t ;
struct TYPE_26__ {int port_name_lo; int port_name_hi; } ;
typedef TYPE_9__ fc_plogi_payload_t ;
struct TYPE_17__ {int port_name_lo; int port_name_hi; int port_id; scalar_t__ resv1; int command_code; } ;
typedef TYPE_10__ fc_logo_payload_t ;
typedef int els_cb_t ;
struct TYPE_20__ {int fc_id; } ;
struct TYPE_18__ {scalar_t__ service_params; } ;


 int FC_ELS_CMD_LOGO ;
 int OCS_ELS_ROLE_ORIGINATOR ;
 int OCS_HW_ELS_REQ ;
 int __ocs_els_init ;
 int fc_htobe24 (int ) ;
 int node_els_trace () ;
 TYPE_8__* ocs_els_io_alloc (TYPE_7__*,int,int ) ;
 int ocs_io_transition (TYPE_8__*,int ,int *) ;
 int ocs_log_err (int *,char*) ;
 int ocs_memset (TYPE_10__*,int ,int) ;

ocs_io_t *
ocs_send_logo(ocs_node_t *node, uint32_t timeout_sec, uint32_t retries,
 els_cb_t cb, void *cbarg)
{
 ocs_io_t *els;
 ocs_t *ocs;
 fc_logo_payload_t *logo;
 fc_plogi_payload_t *sparams;


 ocs = node->ocs;

 node_els_trace();

 sparams = (fc_plogi_payload_t*) node->sport->service_params;

 els = ocs_els_io_alloc(node, sizeof(*logo), OCS_ELS_ROLE_ORIGINATOR);
 if (els == ((void*)0)) {
  ocs_log_err(ocs, "IO alloc failed\n");
 } else {
  els->els_timeout_sec = timeout_sec;
  els->els_retries_remaining = retries;
  els->els_callback = cb;
  els->els_callback_arg = cbarg;
  els->display_name = "logo";



  logo = els->els_req.virt;

  ocs_memset(logo, 0, sizeof(*logo));
  logo->command_code = FC_ELS_CMD_LOGO;
  logo->resv1 = 0;
  logo->port_id = fc_htobe24(node->rnode.sport->fc_id);
  logo->port_name_hi = sparams->port_name_hi;
  logo->port_name_lo = sparams->port_name_lo;

  els->hio_type = OCS_HW_ELS_REQ;
  els->iparam.els.timeout = timeout_sec;
  ocs_io_transition(els, __ocs_els_init, ((void*)0));
 }
 return els;
}
