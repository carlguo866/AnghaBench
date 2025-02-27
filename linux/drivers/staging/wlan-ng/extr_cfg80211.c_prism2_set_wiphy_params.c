
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wlandevice {int dummy; } ;
struct wiphy {int rts_threshold; int frag_threshold; } ;
struct prism2_wiphy_private {struct wlandevice* wlandev; } ;


 int DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD ;
 int DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD ;
 int EFAULT ;
 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 int prism2_domibset_uint32 (struct wlandevice*,int ,int) ;
 struct prism2_wiphy_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int prism2_set_wiphy_params(struct wiphy *wiphy, u32 changed)
{
 struct prism2_wiphy_private *priv = wiphy_priv(wiphy);
 struct wlandevice *wlandev = priv->wlandev;
 u32 data;
 int result;
 int err = 0;

 if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
  if (wiphy->rts_threshold == -1)
   data = 2347;
  else
   data = wiphy->rts_threshold;

  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD,
      data);
  if (result) {
   err = -EFAULT;
   goto exit;
  }
 }

 if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
  if (wiphy->frag_threshold == -1)
   data = 2346;
  else
   data = wiphy->frag_threshold;

  result = prism2_domibset_uint32(wlandev,
      DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD,
      data);
  if (result) {
   err = -EFAULT;
   goto exit;
  }
 }

exit:
 return err;
}
