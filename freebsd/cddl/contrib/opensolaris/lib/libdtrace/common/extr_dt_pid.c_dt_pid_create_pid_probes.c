
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ pr_vaddr; } ;
typedef TYPE_1__ prmap_t ;
struct TYPE_15__ {char* dtpd_mod; char* dtpd_func; char* dtpd_name; int * dtpd_provider; } ;
typedef TYPE_2__ dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_16__ {int dpr_proc; } ;
typedef TYPE_3__ dt_proc_t ;
struct TYPE_17__ {char* dpp_mod; char* dpp_func; char* dpp_name; int dpp_pr; scalar_t__ dpp_last_taken; int * dpp_pcb; TYPE_3__* dpp_dpr; int * dpp_dtp; } ;
typedef TYPE_4__ dt_pid_probe_t ;
typedef int dt_pcb_t ;


 int D_PROC_DYN ;
 int D_PROC_LIB ;
 int D_PROC_NAME ;
 char* PR_OBJ_LDSO ;
 TYPE_1__* Pname_to_map (int ,char*) ;
 int Pobject_iter (int ,int ,TYPE_4__*) ;
 int dt_pid_error (int *,int *,TYPE_3__*,int *,int ,char*,...) ;
 TYPE_1__* dt_pid_fix_mod (TYPE_2__*,int ) ;
 int dt_pid_mod_filt ;
 int dt_pid_per_mod (TYPE_4__*,TYPE_1__ const*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strisglob (char*) ;

__attribute__((used)) static int
dt_pid_create_pid_probes(dtrace_probedesc_t *pdp, dtrace_hdl_t *dtp,
    dt_pcb_t *pcb, dt_proc_t *dpr)
{
 dt_pid_probe_t pp;
 int ret = 0;

 pp.dpp_dtp = dtp;
 pp.dpp_dpr = dpr;
 pp.dpp_pr = dpr->dpr_proc;
 pp.dpp_pcb = pcb;
 pp.dpp_mod = pdp->dtpd_mod[0] != '\0' ? pdp->dtpd_mod : "*";
 pp.dpp_func = pdp->dtpd_func[0] != '\0' ? pdp->dtpd_func : "*";
 pp.dpp_name = pdp->dtpd_name[0] != '\0' ? pdp->dtpd_name : "*";
 pp.dpp_last_taken = 0;

 if (strcmp(pp.dpp_func, "-") == 0) {
  const prmap_t *aout, *pmp;

  if (pdp->dtpd_mod[0] == '\0') {
   pp.dpp_mod = pdp->dtpd_mod;
   (void) strcpy(pdp->dtpd_mod, "a.out");
  } else if (strisglob(pp.dpp_mod) ||
      (aout = Pname_to_map(pp.dpp_pr, "a.out")) == ((void*)0) ||
      (pmp = Pname_to_map(pp.dpp_pr, pp.dpp_mod)) == ((void*)0) ||
      aout->pr_vaddr != pmp->pr_vaddr) {
   return (dt_pid_error(dtp, pcb, dpr, ((void*)0), D_PROC_LIB,
       "only the a.out module is valid with the "
       "'-' function"));
  }

  if (strisglob(pp.dpp_name)) {
   return (dt_pid_error(dtp, pcb, dpr, ((void*)0), D_PROC_NAME,
       "only individual addresses may be specified "
       "with the '-' function"));
  }
 }






 if (strisglob(pp.dpp_mod)) {
  ret = Pobject_iter(pp.dpp_pr, dt_pid_mod_filt, &pp);
 } else {
  const prmap_t *pmp;
  char *obj;






  if ((pmp = dt_pid_fix_mod(pdp, pp.dpp_pr)) != ((void*)0)) {
   if ((obj = strchr(pdp->dtpd_mod, '`')) == ((void*)0))
    obj = pdp->dtpd_mod;
   else
    obj++;

   ret = dt_pid_per_mod(&pp, pmp, obj);
  }
 }

 return (ret);
}
