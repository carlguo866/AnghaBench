
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 int MSG_INFO ;
 int RRM_RANGE_REQ_MAX_RESPONDERS ;
 int WLAN_RRM_RANGE_REQ_MAX_MIN_AP ;
 int atoi (char*) ;
 int hostapd_send_range_req (struct hostapd_data*,int *,int,int,int *,unsigned int) ;
 scalar_t__ hwaddr_aton (char*,int *) ;
 char* str_token (char*,char*,char**) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_ctrl_iface_req_range(struct hostapd_data *hapd, char *cmd)
{
 u8 addr[ETH_ALEN];
 char *token, *context = ((void*)0);
 int random_interval, min_ap;
 u8 responders[ETH_ALEN * RRM_RANGE_REQ_MAX_RESPONDERS];
 unsigned int n_responders;

 token = str_token(cmd, " ", &context);
 if (!token || hwaddr_aton(token, addr)) {
  wpa_printf(MSG_INFO,
      "CTRL: REQ_RANGE - Bad destination address");
  return -1;
 }

 token = str_token(cmd, " ", &context);
 if (!token)
  return -1;

 random_interval = atoi(token);
 if (random_interval < 0 || random_interval > 0xffff)
  return -1;

 token = str_token(cmd, " ", &context);
 if (!token)
  return -1;

 min_ap = atoi(token);
 if (min_ap <= 0 || min_ap > WLAN_RRM_RANGE_REQ_MAX_MIN_AP)
  return -1;

 n_responders = 0;
 while ((token = str_token(cmd, " ", &context))) {
  if (n_responders == RRM_RANGE_REQ_MAX_RESPONDERS) {
   wpa_printf(MSG_INFO,
       "CTRL: REQ_RANGE: Too many responders");
   return -1;
  }

  if (hwaddr_aton(token, responders + n_responders * ETH_ALEN)) {
   wpa_printf(MSG_INFO,
       "CTRL: REQ_RANGE: Bad responder address");
   return -1;
  }

  n_responders++;
 }

 if (!n_responders) {
  wpa_printf(MSG_INFO,
      "CTRL: REQ_RANGE - No FTM responder address");
  return -1;
 }

 return hostapd_send_range_req(hapd, addr, random_interval, min_ap,
          responders, n_responders);
}
