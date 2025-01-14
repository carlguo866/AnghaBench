
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wlandevice {int dummy; } ;
struct p80211pstrd {int len; int data; } ;
struct p80211msg_dot11req_mibset {int dummy; } ;
struct mibrec {int parm1; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_RID_CNFWEP128DEFAULTKEY_LEN ;
 int HFA384x_RID_CNFWEPDEFAULTKEY_LEN ;
 int MIB_TMP_MAXLEN ;
 int hfa384x_drvr_setconfig (struct hfa384x*,int ,int *,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int prism2mib_wepdefaultkey(struct mibrec *mib,
       int isget,
       struct wlandevice *wlandev,
       struct hfa384x *hw,
       struct p80211msg_dot11req_mibset *msg,
       void *data)
{
 int result;
 struct p80211pstrd *pstr = data;
 u8 bytebuf[MIB_TMP_MAXLEN];
 u16 len;

 if (isget) {
  result = 0;
 } else {
  len = (pstr->len > 5) ? HFA384x_RID_CNFWEP128DEFAULTKEY_LEN :
      HFA384x_RID_CNFWEPDEFAULTKEY_LEN;
  memset(bytebuf, 0, len);
  memcpy(bytebuf, pstr->data, pstr->len);
  result = hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, len);
 }

 return result;
}
