
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sta_info {TYPE_1__* mesh; } ;
struct ieee802_11_elems {int preq_len; int prep_len; int perr_len; scalar_t__ rann; scalar_t__ perr; scalar_t__ prep; scalar_t__ preq; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_7__ {scalar_t__ variable; } ;
struct TYPE_8__ {TYPE_2__ mesh_action; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_10__ {TYPE_4__ action; } ;
struct ieee80211_mgmt {int bssid; TYPE_5__ u; int sa; } ;
struct TYPE_6__ {scalar_t__ plink_state; } ;


 int IEEE80211_MIN_ACTION_SIZE ;
 int MPATH_PREP ;
 int MPATH_PREQ ;
 scalar_t__ NL80211_PLINK_ESTAB ;
 int hwmp_perr_frame_process (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,scalar_t__) ;
 int hwmp_prep_frame_process (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,scalar_t__,scalar_t__) ;
 int hwmp_preq_frame_process (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,scalar_t__,scalar_t__) ;
 int hwmp_rann_frame_process (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,scalar_t__) ;
 scalar_t__ hwmp_route_info_get (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,scalar_t__,int ) ;
 int ieee802_11_parse_elems (scalar_t__,size_t,int,struct ieee802_11_elems*,int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int ) ;

void mesh_rx_path_sel_frame(struct ieee80211_sub_if_data *sdata,
       struct ieee80211_mgmt *mgmt, size_t len)
{
 struct ieee802_11_elems elems;
 size_t baselen;
 u32 path_metric;
 struct sta_info *sta;


 if (len < IEEE80211_MIN_ACTION_SIZE + 1)
  return;

 rcu_read_lock();
 sta = sta_info_get(sdata, mgmt->sa);
 if (!sta || sta->mesh->plink_state != NL80211_PLINK_ESTAB) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();

 baselen = (u8 *) mgmt->u.action.u.mesh_action.variable - (u8 *) mgmt;
 ieee802_11_parse_elems(mgmt->u.action.u.mesh_action.variable,
          len - baselen, 0, &elems, mgmt->bssid, ((void*)0));

 if (elems.preq) {
  if (elems.preq_len != 37)

   return;
  path_metric = hwmp_route_info_get(sdata, mgmt, elems.preq,
        MPATH_PREQ);
  if (path_metric)
   hwmp_preq_frame_process(sdata, mgmt, elems.preq,
      path_metric);
 }
 if (elems.prep) {
  if (elems.prep_len != 31)

   return;
  path_metric = hwmp_route_info_get(sdata, mgmt, elems.prep,
        MPATH_PREP);
  if (path_metric)
   hwmp_prep_frame_process(sdata, mgmt, elems.prep,
      path_metric);
 }
 if (elems.perr) {
  if (elems.perr_len != 15)

   return;
  hwmp_perr_frame_process(sdata, mgmt, elems.perr);
 }
 if (elems.rann)
  hwmp_rann_frame_process(sdata, mgmt, elems.rann);
}
