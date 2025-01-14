
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_11__ {TYPE_4__* wiphy; } ;
struct mwifiex_private {TYPE_5__ wdev; struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie_types_tsf_timestamp {int * tsf_data; } ;
struct mwifiex_ie_types_data {int dummy; } ;
struct mwifiex_ie_types_chan_band_list_param_set {struct chan_band_param_set* chan_band_param; } ;
struct mwifiex_adapter {TYPE_6__* nd_info; } ;
struct host_cmd_ds_802_11_scan_rsp {int number_of_sets; int* bss_desc_and_tlv_buffer; int bss_descript_size; } ;
struct TYPE_7__ {struct host_cmd_ds_802_11_scan_rsp scan_resp; } ;
struct TYPE_8__ {struct host_cmd_ds_802_11_scan_rsp scan_resp; TYPE_1__ bg_scan_query_resp; } ;
struct host_cmd_ds_command {int size; TYPE_2__ params; int command; } ;
struct chan_band_param_set {int radio_type; int chan_number; } ;
struct cfg80211_wowlan_nd_match {int n_channels; int * channels; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
typedef int fw_tsf ;
typedef int __le64 ;
struct TYPE_12__ {int n_matches; struct cfg80211_wowlan_nd_match** matches; } ;
struct TYPE_10__ {TYPE_3__* wowlan_config; } ;
struct TYPE_9__ {struct cfg80211_sched_scan_request* nd_config; } ;


 int ERROR ;
 int GFP_ATOMIC ;
 int HostCmd_CMD_802_11_BG_SCAN_QUERY ;
 int INFO ;
 int MWIFIEX_MAX_AP ;
 int S_DS_GEN ;
 int TLV_TYPE_CHANNELBANDLIST ;
 int TLV_TYPE_TSFTIMESTAMP ;
 int TSF_DATA_SIZE ;
 void* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int mwifiex_11h_get_csa_closed_channel (struct mwifiex_private*) ;
 int mwifiex_check_next_scan_command (struct mwifiex_private*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,int) ;
 int mwifiex_parse_single_response_buf (struct mwifiex_private*,int**,int*,int ,int*,int,int ) ;
 int mwifiex_ret_802_11_scan_get_tlv_ptrs (struct mwifiex_adapter*,struct mwifiex_ie_types_data*,int,int ,struct mwifiex_ie_types_data**) ;

int mwifiex_ret_802_11_scan(struct mwifiex_private *priv,
       struct host_cmd_ds_command *resp)
{
 int ret = 0;
 struct mwifiex_adapter *adapter = priv->adapter;
 struct host_cmd_ds_802_11_scan_rsp *scan_rsp;
 struct mwifiex_ie_types_data *tlv_data;
 struct mwifiex_ie_types_tsf_timestamp *tsf_tlv;
 u8 *bss_info;
 u32 scan_resp_size;
 u32 bytes_left;
 u32 idx;
 u32 tlv_buf_size;
 struct mwifiex_ie_types_chan_band_list_param_set *chan_band_tlv;
 struct chan_band_param_set *chan_band;
 u8 is_bgscan_resp;
 __le64 fw_tsf = 0;
 u8 *radio_type;
 struct cfg80211_wowlan_nd_match *pmatch;
 struct cfg80211_sched_scan_request *nd_config = ((void*)0);

 is_bgscan_resp = (le16_to_cpu(resp->command)
     == HostCmd_CMD_802_11_BG_SCAN_QUERY);
 if (is_bgscan_resp)
  scan_rsp = &resp->params.bg_scan_query_resp.scan_resp;
 else
  scan_rsp = &resp->params.scan_resp;


 if (scan_rsp->number_of_sets > MWIFIEX_MAX_AP) {
  mwifiex_dbg(adapter, ERROR,
       "SCAN_RESP: too many AP returned (%d)\n",
       scan_rsp->number_of_sets);
  ret = -1;
  goto check_next_scan;
 }


 mwifiex_11h_get_csa_closed_channel(priv);

 bytes_left = le16_to_cpu(scan_rsp->bss_descript_size);
 mwifiex_dbg(adapter, INFO,
      "info: SCAN_RESP: bss_descript_size %d\n",
      bytes_left);

 scan_resp_size = le16_to_cpu(resp->size);

 mwifiex_dbg(adapter, INFO,
      "info: SCAN_RESP: returned %d APs before parsing\n",
      scan_rsp->number_of_sets);

 bss_info = scan_rsp->bss_desc_and_tlv_buffer;







 tlv_buf_size = scan_resp_size - (bytes_left
      + sizeof(scan_rsp->bss_descript_size)
      + sizeof(scan_rsp->number_of_sets)
      + S_DS_GEN);

 tlv_data = (struct mwifiex_ie_types_data *) (scan_rsp->
       bss_desc_and_tlv_buffer +
       bytes_left);



 mwifiex_ret_802_11_scan_get_tlv_ptrs(adapter, tlv_data, tlv_buf_size,
          TLV_TYPE_TSFTIMESTAMP,
          (struct mwifiex_ie_types_data **)
          &tsf_tlv);



 mwifiex_ret_802_11_scan_get_tlv_ptrs(adapter, tlv_data, tlv_buf_size,
          TLV_TYPE_CHANNELBANDLIST,
          (struct mwifiex_ie_types_data **)
          &chan_band_tlv);






 if (nd_config) {
  adapter->nd_info =
   kzalloc(sizeof(struct cfg80211_wowlan_nd_match) +
    sizeof(struct cfg80211_wowlan_nd_match *) *
    scan_rsp->number_of_sets, GFP_ATOMIC);

  if (adapter->nd_info)
   adapter->nd_info->n_matches = scan_rsp->number_of_sets;
 }

 for (idx = 0; idx < scan_rsp->number_of_sets && bytes_left; idx++) {






  if (tsf_tlv)
   memcpy(&fw_tsf, &tsf_tlv->tsf_data[idx * TSF_DATA_SIZE],
          sizeof(fw_tsf));

  if (chan_band_tlv) {
   chan_band = &chan_band_tlv->chan_band_param[idx];
   radio_type = &chan_band->radio_type;
  } else {
   radio_type = ((void*)0);
  }

  if (chan_band_tlv && adapter->nd_info) {
   adapter->nd_info->matches[idx] =
    kzalloc(sizeof(*pmatch) + sizeof(u32),
     GFP_ATOMIC);

   pmatch = adapter->nd_info->matches[idx];

   if (pmatch) {
    pmatch->n_channels = 1;
    pmatch->channels[0] = chan_band->chan_number;
   }
  }

  ret = mwifiex_parse_single_response_buf(priv, &bss_info,
       &bytes_left,
       le64_to_cpu(fw_tsf),
       radio_type, 0, 0);
  if (ret)
   goto check_next_scan;
 }

check_next_scan:
 mwifiex_check_next_scan_command(priv);
 return ret;
}
