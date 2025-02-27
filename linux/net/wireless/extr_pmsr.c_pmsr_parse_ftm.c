
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct nlattr {int dummy; } ;
struct genl_info {int extack; } ;
struct TYPE_6__ {struct cfg80211_pmsr_capabilities* pmsr_capa; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct TYPE_9__ {int requested; int asap; scalar_t__ num_bursts_exp; int burst_duration; scalar_t__ ftms_per_burst; int ftmr_retries; int request_lci; int request_civicloc; void* burst_period; void* preamble; } ;
struct TYPE_8__ {TYPE_2__* chan; void* width; } ;
struct cfg80211_pmsr_request_peer {TYPE_4__ ftm; TYPE_3__ chandef; } ;
struct TYPE_10__ {int bandwidths; int preambles; scalar_t__ max_bursts_exponent; scalar_t__ max_ftms_per_burst; int request_civicloc; int request_lci; int non_asap; int asap; } ;
struct cfg80211_pmsr_capabilities {TYPE_5__ ftm; } ;
struct TYPE_7__ {int band; } ;


 int BIT (void*) ;
 int EINVAL ;

 size_t NL80211_PMSR_FTM_REQ_ATTR_ASAP ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST ;
 int NL80211_PMSR_FTM_REQ_ATTR_MAX ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC ;
 size_t NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI ;
 void* NL80211_PREAMBLE_DMG ;
 int NL_SET_ERR_MSG (int ,char*) ;
 int NL_SET_ERR_MSG_ATTR (int ,struct nlattr*,char*) ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;

__attribute__((used)) static int pmsr_parse_ftm(struct cfg80211_registered_device *rdev,
     struct nlattr *ftmreq,
     struct cfg80211_pmsr_request_peer *out,
     struct genl_info *info)
{
 const struct cfg80211_pmsr_capabilities *capa = rdev->wiphy.pmsr_capa;
 struct nlattr *tb[NL80211_PMSR_FTM_REQ_ATTR_MAX + 1];
 u32 preamble = NL80211_PREAMBLE_DMG;


 if (!(rdev->wiphy.pmsr_capa->ftm.bandwidths & BIT(out->chandef.width))) {
  NL_SET_ERR_MSG(info->extack, "FTM: unsupported bandwidth");
  return -EINVAL;
 }


 nla_parse_nested_deprecated(tb, NL80211_PMSR_FTM_REQ_ATTR_MAX, ftmreq,
        ((void*)0), ((void*)0));

 if (tb[NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE])
  preamble = nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE]);


 out->ftm.requested = 1;

 switch (out->chandef.chan->band) {
 case 128:

  break;
 default:
  if (!tb[NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE]) {
   NL_SET_ERR_MSG(info->extack,
           "FTM: must specify preamble");
   return -EINVAL;
  }
 }

 if (!(capa->ftm.preambles & BIT(preamble))) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_PREAMBLE],
        "FTM: invalid preamble");
  return -EINVAL;
 }

 out->ftm.preamble = preamble;

 out->ftm.burst_period = 0;
 if (tb[NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD])
  out->ftm.burst_period =
   nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_BURST_PERIOD]);

 out->ftm.asap = !!tb[NL80211_PMSR_FTM_REQ_ATTR_ASAP];
 if (out->ftm.asap && !capa->ftm.asap) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_ASAP],
        "FTM: ASAP mode not supported");
  return -EINVAL;
 }

 if (!out->ftm.asap && !capa->ftm.non_asap) {
  NL_SET_ERR_MSG(info->extack,
          "FTM: non-ASAP mode not supported");
  return -EINVAL;
 }

 out->ftm.num_bursts_exp = 0;
 if (tb[NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP])
  out->ftm.num_bursts_exp =
   nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP]);

 if (capa->ftm.max_bursts_exponent >= 0 &&
     out->ftm.num_bursts_exp > capa->ftm.max_bursts_exponent) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_NUM_BURSTS_EXP],
        "FTM: max NUM_BURSTS_EXP must be set lower than the device limit");
  return -EINVAL;
 }

 out->ftm.burst_duration = 15;
 if (tb[NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION])
  out->ftm.burst_duration =
   nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_BURST_DURATION]);

 out->ftm.ftms_per_burst = 0;
 if (tb[NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST])
  out->ftm.ftms_per_burst =
   nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST]);

 if (capa->ftm.max_ftms_per_burst &&
     (out->ftm.ftms_per_burst > capa->ftm.max_ftms_per_burst ||
      out->ftm.ftms_per_burst == 0)) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_FTMS_PER_BURST],
        "FTM: FTMs per burst must be set lower than the device limit but non-zero");
  return -EINVAL;
 }

 out->ftm.ftmr_retries = 3;
 if (tb[NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES])
  out->ftm.ftmr_retries =
   nla_get_u32(tb[NL80211_PMSR_FTM_REQ_ATTR_NUM_FTMR_RETRIES]);

 out->ftm.request_lci = !!tb[NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI];
 if (out->ftm.request_lci && !capa->ftm.request_lci) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_REQUEST_LCI],
        "FTM: LCI request not supported");
 }

 out->ftm.request_civicloc =
  !!tb[NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC];
 if (out->ftm.request_civicloc && !capa->ftm.request_civicloc) {
  NL_SET_ERR_MSG_ATTR(info->extack,
        tb[NL80211_PMSR_FTM_REQ_ATTR_REQUEST_CIVICLOC],
       "FTM: civic location request not supported");
 }

 return 0;
}
