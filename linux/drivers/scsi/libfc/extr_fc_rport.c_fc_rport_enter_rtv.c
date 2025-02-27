
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {int kref; TYPE_2__ ids; int rp_mutex; struct fc_lport* local_port; } ;
struct TYPE_3__ {int (* elsct_send ) (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv {int dummy; } ;


 int ELS_RTV ;
 int FC_EX_ALLOC_ERR ;
 int FC_EX_XMIT_ERR ;
 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int ) ;
 int RPORT_ST_RTV ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 int fc_rport_destroy ;
 int fc_rport_error_retry (struct fc_rport_priv*,int ) ;
 int fc_rport_rtv_resp ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int fc_rport_state_enter (struct fc_rport_priv*,int ) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct fc_lport*,int ,struct fc_frame*,int ,int ,struct fc_rport_priv*,int) ;

__attribute__((used)) static void fc_rport_enter_rtv(struct fc_rport_priv *rdata)
{
 struct fc_frame *fp;
 struct fc_lport *lport = rdata->local_port;

 lockdep_assert_held(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Port entered RTV state from %s state\n",
       fc_rport_state(rdata));

 fc_rport_state_enter(rdata, RPORT_ST_RTV);

 fp = fc_frame_alloc(lport, sizeof(struct fc_els_rtv));
 if (!fp) {
  fc_rport_error_retry(rdata, -FC_EX_ALLOC_ERR);
  return;
 }

 kref_get(&rdata->kref);
 if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, ELS_RTV,
      fc_rport_rtv_resp, rdata,
      2 * lport->r_a_tov)) {
  fc_rport_error_retry(rdata, -FC_EX_XMIT_ERR);
  kref_put(&rdata->kref, fc_rport_destroy);
 }
}
