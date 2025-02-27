
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_data {int dummy; } ;
typedef int eapol_logger_level ;





 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_LEVEL_WARNING ;
 int HOSTAPD_MODULE_IEEE8021X ;
 int hostapd_logger (struct hostapd_data*,int const*,int ,int,char*,char const*) ;

__attribute__((used)) static void ieee802_1x_logger(void *ctx, const u8 *addr,
         eapol_logger_level level, const char *txt)
{

 struct hostapd_data *hapd = ctx;
 int hlevel;

 switch (level) {
 case 128:
  hlevel = HOSTAPD_LEVEL_WARNING;
  break;
 case 129:
  hlevel = HOSTAPD_LEVEL_INFO;
  break;
 case 130:
 default:
  hlevel = HOSTAPD_LEVEL_DEBUG;
  break;
 }

 hostapd_logger(hapd, addr, HOSTAPD_MODULE_IEEE8021X, hlevel, "%s",
         txt);

}
