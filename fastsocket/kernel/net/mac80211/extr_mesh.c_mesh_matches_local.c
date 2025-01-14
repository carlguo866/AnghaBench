
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee802_11_elems {int ht_operation; TYPE_2__* mesh_config; int mesh_id_len; int mesh_id; } ;
struct TYPE_10__ {int chan; } ;
struct TYPE_8__ {scalar_t__ basic_rates; TYPE_5__ chandef; } ;
struct TYPE_9__ {TYPE_3__ bss_conf; } ;
struct ieee80211_if_mesh {scalar_t__ mesh_pp_id; scalar_t__ mesh_pm_id; scalar_t__ mesh_cc_id; scalar_t__ mesh_sp_id; scalar_t__ mesh_auth_id; int mesh_id; int mesh_id_len; } ;
struct TYPE_6__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; struct ieee80211_local* local; TYPE_1__ u; } ;
struct ieee80211_local {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_7__ {scalar_t__ meshconf_psel; scalar_t__ meshconf_pmetric; scalar_t__ meshconf_congest; scalar_t__ meshconf_synch; scalar_t__ meshconf_auth; } ;


 int cfg80211_chandef_compatible (TYPE_5__*,struct cfg80211_chan_def*) ;
 int ieee80211_get_sdata_band (struct ieee80211_sub_if_data*) ;
 int ieee80211_ht_oper_to_chandef (int ,int ,struct cfg80211_chan_def*) ;
 int ieee80211_sta_get_rates (struct ieee80211_local*,struct ieee802_11_elems*,int ,scalar_t__*) ;
 scalar_t__ memcmp (int ,int ,int ) ;

bool mesh_matches_local(struct ieee80211_sub_if_data *sdata,
   struct ieee802_11_elems *ie)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct ieee80211_local *local = sdata->local;
 u32 basic_rates = 0;
 struct cfg80211_chan_def sta_chan_def;
 if (!(ifmsh->mesh_id_len == ie->mesh_id_len &&
      memcmp(ifmsh->mesh_id, ie->mesh_id, ie->mesh_id_len) == 0 &&
      (ifmsh->mesh_pp_id == ie->mesh_config->meshconf_psel) &&
      (ifmsh->mesh_pm_id == ie->mesh_config->meshconf_pmetric) &&
      (ifmsh->mesh_cc_id == ie->mesh_config->meshconf_congest) &&
      (ifmsh->mesh_sp_id == ie->mesh_config->meshconf_synch) &&
      (ifmsh->mesh_auth_id == ie->mesh_config->meshconf_auth)))
  return 0;

 ieee80211_sta_get_rates(local, ie, ieee80211_get_sdata_band(sdata),
    &basic_rates);

 if (sdata->vif.bss_conf.basic_rates != basic_rates)
  return 0;

 ieee80211_ht_oper_to_chandef(sdata->vif.bss_conf.chandef.chan,
         ie->ht_operation, &sta_chan_def);

 if (!cfg80211_chandef_compatible(&sdata->vif.bss_conf.chandef,
      &sta_chan_def))
  return 0;

 return 1;
}
