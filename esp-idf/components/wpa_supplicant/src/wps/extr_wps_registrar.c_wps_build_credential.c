
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int dummy; } ;
struct wpabuf {int dummy; } ;


 scalar_t__ wps_build_cred_auth_type (struct wpabuf*,struct wps_credential const*) ;
 scalar_t__ wps_build_cred_encr_type (struct wpabuf*,struct wps_credential const*) ;
 scalar_t__ wps_build_cred_mac_addr (struct wpabuf*,struct wps_credential const*) ;
 scalar_t__ wps_build_cred_network_idx (struct wpabuf*,struct wps_credential const*) ;
 scalar_t__ wps_build_cred_network_key (struct wpabuf*,struct wps_credential const*) ;
 scalar_t__ wps_build_cred_ssid (struct wpabuf*,struct wps_credential const*) ;

__attribute__((used)) static int wps_build_credential(struct wpabuf *msg,
    const struct wps_credential *cred)
{
 if (wps_build_cred_network_idx(msg, cred) ||
     wps_build_cred_ssid(msg, cred) ||
     wps_build_cred_auth_type(msg, cred) ||
     wps_build_cred_encr_type(msg, cred) ||
     wps_build_cred_network_key(msg, cred) ||
     wps_build_cred_mac_addr(msg, cred))
  return -1;
 return 0;
}
