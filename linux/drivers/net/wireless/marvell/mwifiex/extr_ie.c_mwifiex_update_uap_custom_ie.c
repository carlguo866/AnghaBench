
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ie_list {TYPE_1__* ie_list; int len; int type; } ;
struct mwifiex_ie {int ie_index; int ie_length; } ;
struct TYPE_2__ {int ie_index; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE_MAX_IE_SIZE ;
 int MWIFIEX_AUTO_IDX_MASK ;
 int TLV_TYPE_MGMT_IE ;
 int cpu_to_le16 (int ) ;
 int kfree (struct mwifiex_ie_list*) ;
 struct mwifiex_ie_list* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le16_unaligned_add_cpu (int *,int) ;
 int memcpy (int *,struct mwifiex_ie*,int) ;
 int mwifiex_update_autoindex_ies (struct mwifiex_private*,struct mwifiex_ie_list*) ;

__attribute__((used)) static int
mwifiex_update_uap_custom_ie(struct mwifiex_private *priv,
        struct mwifiex_ie *beacon_ie, u16 *beacon_idx,
        struct mwifiex_ie *pr_ie, u16 *probe_idx,
        struct mwifiex_ie *ar_ie, u16 *assoc_idx)
{
 struct mwifiex_ie_list *ap_custom_ie;
 u8 *pos;
 u16 len;
 int ret;

 ap_custom_ie = kzalloc(sizeof(*ap_custom_ie), GFP_KERNEL);
 if (!ap_custom_ie)
  return -ENOMEM;

 ap_custom_ie->type = cpu_to_le16(TLV_TYPE_MGMT_IE);
 pos = (u8 *)ap_custom_ie->ie_list;

 if (beacon_ie) {
  len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
        le16_to_cpu(beacon_ie->ie_length);
  memcpy(pos, beacon_ie, len);
  pos += len;
  le16_unaligned_add_cpu(&ap_custom_ie->len, len);
 }
 if (pr_ie) {
  len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
        le16_to_cpu(pr_ie->ie_length);
  memcpy(pos, pr_ie, len);
  pos += len;
  le16_unaligned_add_cpu(&ap_custom_ie->len, len);
 }
 if (ar_ie) {
  len = sizeof(struct mwifiex_ie) - IEEE_MAX_IE_SIZE +
        le16_to_cpu(ar_ie->ie_length);
  memcpy(pos, ar_ie, len);
  pos += len;
  le16_unaligned_add_cpu(&ap_custom_ie->len, len);
 }

 ret = mwifiex_update_autoindex_ies(priv, ap_custom_ie);

 pos = (u8 *)(&ap_custom_ie->ie_list[0].ie_index);
 if (beacon_ie && *beacon_idx == MWIFIEX_AUTO_IDX_MASK) {

  *beacon_idx = le16_to_cpu(ap_custom_ie->ie_list[0].ie_index);
  len = sizeof(*beacon_ie) - IEEE_MAX_IE_SIZE +
        le16_to_cpu(beacon_ie->ie_length);
  pos += len;
 }
 if (pr_ie && le16_to_cpu(pr_ie->ie_index) == MWIFIEX_AUTO_IDX_MASK) {

  *probe_idx = *((u16 *)pos);
  len = sizeof(*pr_ie) - IEEE_MAX_IE_SIZE +
        le16_to_cpu(pr_ie->ie_length);
  pos += len;
 }
 if (ar_ie && le16_to_cpu(ar_ie->ie_index) == MWIFIEX_AUTO_IDX_MASK)

  *assoc_idx = *((u16 *)pos);

 kfree(ap_custom_ie);
 return ret;
}
