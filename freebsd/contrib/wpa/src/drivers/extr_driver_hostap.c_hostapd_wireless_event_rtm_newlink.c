
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtattr {scalar_t__ rta_type; scalar_t__ rta_len; } ;
struct ifinfomsg {int dummy; } ;
struct hostap_driver_data {int dummy; } ;


 scalar_t__ IFLA_WIRELESS ;
 int RTA_ALIGN (int) ;
 struct rtattr* RTA_NEXT (struct rtattr*,int) ;
 scalar_t__ RTA_OK (struct rtattr*,int) ;
 int hostapd_wireless_event_wireless (struct hostap_driver_data*,char*,scalar_t__) ;

__attribute__((used)) static void hostapd_wireless_event_rtm_newlink(void *ctx,
            struct ifinfomsg *ifi,
            u8 *buf, size_t len)
{
 struct hostap_driver_data *drv = ctx;
 int attrlen, rta_len;
 struct rtattr *attr;




 attrlen = len;
 attr = (struct rtattr *) buf;

 rta_len = RTA_ALIGN(sizeof(struct rtattr));
 while (RTA_OK(attr, attrlen)) {
  if (attr->rta_type == IFLA_WIRELESS) {
   hostapd_wireless_event_wireless(
    drv, ((char *) attr) + rta_len,
    attr->rta_len - rta_len);
  }
  attr = RTA_NEXT(attr, attrlen);
 }
}
