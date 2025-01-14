
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u32 ;
struct virtchnl_rss_key {int key_len; int * key; int vsi_id; } ;
struct TYPE_5__ {int vsi_num; } ;
struct ixl_vf {int vf_num; TYPE_2__ vsi; } ;
struct TYPE_6__ {int asq_last_status; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct i40e_hw {TYPE_3__ aq; TYPE_1__ mac; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;
struct i40e_aqc_get_set_rss_key_data {int extended_hash_key; int standard_rss_key; } ;
typedef int key_data ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int DDPRINTF (int ,char*,int ,int ) ;
 int I40E_ERR_ADMIN_QUEUE_ERROR ;
 int I40E_ERR_PARAM ;
 scalar_t__ I40E_MAC_X722 ;
 int I40E_VFQF_HKEY1 (int,int ) ;
 int VIRTCHNL_OP_CONFIG_RSS_KEY ;
 int bcopy (int *,int ,int) ;
 int bzero (struct i40e_aqc_get_set_rss_key_data*,int) ;
 int device_printf (int ,char*,int ,int,...) ;
 int i40e_aq_set_rss_key (struct i40e_hw*,int ,struct i40e_aqc_get_set_rss_key_data*) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_send_vf_nack (struct ixl_pf*,struct ixl_vf*,int ,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int i40e_write_rx_ctl (struct i40e_hw*,int ,int ) ;
 int ixl_send_vf_ack (struct ixl_pf*,struct ixl_vf*,int ) ;

__attribute__((used)) static void
ixl_vf_config_rss_key_msg(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
 struct i40e_hw *hw;
 struct virtchnl_rss_key *key;
 struct i40e_aqc_get_set_rss_key_data key_data;
 enum i40e_status_code status;

 hw = &pf->hw;

 if (msg_size < sizeof(*key)) {
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
      I40E_ERR_PARAM);
  return;
 }

 key = msg;

 if (key->key_len > 52) {
  device_printf(pf->dev, "VF %d: Key size in msg (%d) is greater than max key size (%d)\n",
      vf->vf_num, key->key_len, 52);
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
      I40E_ERR_PARAM);
  return;
 }

 if (key->vsi_id != vf->vsi.vsi_num) {
  device_printf(pf->dev, "VF %d: VSI id in recvd message (%d) does not match expected id (%d)\n",
      vf->vf_num, key->vsi_id, vf->vsi.vsi_num);
  i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
      I40E_ERR_PARAM);
  return;
 }


 if (hw->mac.type == I40E_MAC_X722) {
  bzero(&key_data, sizeof(key_data));
  if (key->key_len <= 40)
   bcopy(key->key, key_data.standard_rss_key, key->key_len);
  else {
   bcopy(key->key, key_data.standard_rss_key, 40);
   bcopy(&key->key[40], key_data.extended_hash_key, key->key_len - 40);
  }
  status = i40e_aq_set_rss_key(hw, vf->vsi.vsi_num, &key_data);
  if (status) {
   device_printf(pf->dev, "i40e_aq_set_rss_key status %s, error %s\n",
       i40e_stat_str(hw, status), i40e_aq_str(hw, hw->aq.asq_last_status));
   i40e_send_vf_nack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY,
       I40E_ERR_ADMIN_QUEUE_ERROR);
   return;
  }
 } else {
  for (int i = 0; i < (key->key_len / 4); i++)
   i40e_write_rx_ctl(hw, I40E_VFQF_HKEY1(i, vf->vf_num), ((u32 *)key->key)[i]);
 }

 DDPRINTF(pf->dev, "VF %d: Programmed key starting with 0x%x ok!",
     vf->vf_num, key->key[0]);

 ixl_send_vf_ack(pf, vf, VIRTCHNL_OP_CONFIG_RSS_KEY);
}
