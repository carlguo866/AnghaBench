
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_police {int tcf_bindcnt; int tcf_refcnt; int tcfp_mtu; int tcf_lock; int common; int * tcf_next; scalar_t__ tcf_index; int tcfp_t_c; void* tcfp_ewma_rate; int tcf_action; int tcfp_ptoks; struct qdisc_rate_table* tcfp_P_tab; struct qdisc_rate_table* tcfp_R_tab; int tcfp_burst; int tcfp_toks; void* tcfp_result; int tcf_rate_est; int tcf_bstats; } ;
struct tcf_common {int tcf_bindcnt; int tcf_refcnt; int tcfp_mtu; int tcf_lock; int common; int * tcf_next; scalar_t__ tcf_index; int tcfp_t_c; void* tcfp_ewma_rate; int tcf_action; int tcfp_ptoks; struct qdisc_rate_table* tcfp_P_tab; struct qdisc_rate_table* tcfp_R_tab; int tcfp_burst; int tcfp_toks; void* tcfp_result; int tcf_rate_est; int tcf_bstats; } ;
struct tc_police_compat {int dummy; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct tc_police {int mtu; scalar_t__ index; int action; int burst; TYPE_2__ peakrate; TYPE_2__ rate; } ;
struct tc_action {struct tcf_police* priv; } ;
struct TYPE_3__ {int cell_log; } ;
struct qdisc_rate_table {TYPE_1__ rate; } ;
struct nlattr {int dummy; } ;


 int ACT_P_CREATED ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int L2T_P (struct tcf_police*,int) ;
 int POL_TAB_MASK ;
 size_t TCA_POLICE_AVRATE ;
 int TCA_POLICE_MAX ;
 size_t TCA_POLICE_PEAKRATE ;
 size_t TCA_POLICE_RATE ;
 size_t TCA_POLICE_RESULT ;
 size_t TCA_POLICE_TBF ;
 int gen_estimator_active (int *,int *) ;
 int gen_replace_estimator (int *,int *,int *,struct nlattr*) ;
 int kfree (struct tcf_police*) ;
 struct tcf_police* kzalloc (int,int ) ;
 struct tc_police* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 int police_hash_info ;
 int police_idx_gen ;
 int police_lock ;
 int police_policy ;
 int psched_get_time () ;
 struct qdisc_rate_table* qdisc_get_rtab (TYPE_2__*,struct nlattr*) ;
 int qdisc_put_rtab (struct qdisc_rate_table*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned int tcf_hash (scalar_t__,int ) ;
 struct tcf_police* tcf_hash_lookup (scalar_t__,int *) ;
 scalar_t__ tcf_hash_new_index (int *,int *) ;
 int ** tcf_police_ht ;
 struct tcf_police* to_police (struct tcf_police*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int tcf_act_police_locate(struct nlattr *nla, struct nlattr *est,
     struct tc_action *a, int ovr, int bind)
{
 unsigned h;
 int ret = 0, err;
 struct nlattr *tb[TCA_POLICE_MAX + 1];
 struct tc_police *parm;
 struct tcf_police *police;
 struct qdisc_rate_table *R_tab = ((void*)0), *P_tab = ((void*)0);
 int size;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested(tb, TCA_POLICE_MAX, nla, police_policy);
 if (err < 0)
  return err;

 if (tb[TCA_POLICE_TBF] == ((void*)0))
  return -EINVAL;
 size = nla_len(tb[TCA_POLICE_TBF]);
 if (size != sizeof(*parm) && size != sizeof(struct tc_police_compat))
  return -EINVAL;
 parm = nla_data(tb[TCA_POLICE_TBF]);

 if (parm->index) {
  struct tcf_common *pc;

  pc = tcf_hash_lookup(parm->index, &police_hash_info);
  if (pc != ((void*)0)) {
   a->priv = pc;
   police = to_police(pc);
   if (bind) {
    police->tcf_bindcnt += 1;
    police->tcf_refcnt += 1;
   }
   if (ovr)
    goto override;
   return ret;
  }
 }

 police = kzalloc(sizeof(*police), GFP_KERNEL);
 if (police == ((void*)0))
  return -ENOMEM;
 ret = ACT_P_CREATED;
 police->tcf_refcnt = 1;
 spin_lock_init(&police->tcf_lock);
 if (bind)
  police->tcf_bindcnt = 1;
override:
 if (parm->rate.rate) {
  err = -ENOMEM;
  R_tab = qdisc_get_rtab(&parm->rate, tb[TCA_POLICE_RATE]);
  if (R_tab == ((void*)0))
   goto failure;

  if (parm->peakrate.rate) {
   P_tab = qdisc_get_rtab(&parm->peakrate,
            tb[TCA_POLICE_PEAKRATE]);
   if (P_tab == ((void*)0))
    goto failure;
  }
 }

 spin_lock_bh(&police->tcf_lock);
 if (est) {
  err = gen_replace_estimator(&police->tcf_bstats,
         &police->tcf_rate_est,
         &police->tcf_lock, est);
  if (err)
   goto failure_unlock;
 } else if (tb[TCA_POLICE_AVRATE] &&
     (ret == ACT_P_CREATED ||
      !gen_estimator_active(&police->tcf_bstats,
       &police->tcf_rate_est))) {
  err = -EINVAL;
  goto failure_unlock;
 }


 if (R_tab != ((void*)0)) {
  qdisc_put_rtab(police->tcfp_R_tab);
  police->tcfp_R_tab = R_tab;
 }
 if (P_tab != ((void*)0)) {
  qdisc_put_rtab(police->tcfp_P_tab);
  police->tcfp_P_tab = P_tab;
 }

 if (tb[TCA_POLICE_RESULT])
  police->tcfp_result = nla_get_u32(tb[TCA_POLICE_RESULT]);
 police->tcfp_toks = police->tcfp_burst = parm->burst;
 police->tcfp_mtu = parm->mtu;
 if (police->tcfp_mtu == 0) {
  police->tcfp_mtu = ~0;
  if (police->tcfp_R_tab)
   police->tcfp_mtu = 255<<police->tcfp_R_tab->rate.cell_log;
 }
 if (police->tcfp_P_tab)
  police->tcfp_ptoks = L2T_P(police, police->tcfp_mtu);
 police->tcf_action = parm->action;

 if (tb[TCA_POLICE_AVRATE])
  police->tcfp_ewma_rate = nla_get_u32(tb[TCA_POLICE_AVRATE]);

 spin_unlock_bh(&police->tcf_lock);
 if (ret != ACT_P_CREATED)
  return ret;

 police->tcfp_t_c = psched_get_time();
 police->tcf_index = parm->index ? parm->index :
  tcf_hash_new_index(&police_idx_gen, &police_hash_info);
 h = tcf_hash(police->tcf_index, POL_TAB_MASK);
 write_lock_bh(&police_lock);
 police->tcf_next = tcf_police_ht[h];
 tcf_police_ht[h] = &police->common;
 write_unlock_bh(&police_lock);

 a->priv = police;
 return ret;

failure_unlock:
 spin_unlock_bh(&police->tcf_lock);
failure:
 if (P_tab)
  qdisc_put_rtab(P_tab);
 if (R_tab)
  qdisc_put_rtab(R_tab);
 if (ret == ACT_P_CREATED)
  kfree(police);
 return err;
}
