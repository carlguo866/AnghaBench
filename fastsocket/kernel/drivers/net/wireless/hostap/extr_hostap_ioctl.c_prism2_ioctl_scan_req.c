
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ssid_len; int ssid; } ;
struct TYPE_5__ {TYPE_2__ scan_req; } ;
struct prism2_hostapd_param {TYPE_1__ u; } ;
struct TYPE_7__ {scalar_t__ iw_mode; scalar_t__ sta_fw_ver; int dev; int dev_enabled; } ;
typedef TYPE_3__ local_info_t ;


 int ENETDOWN ;
 int EOPNOTSUPP ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ PRISM2_FW_VER (int,int,int) ;
 int prism2_request_hostscan (int ,int ,int ) ;

__attribute__((used)) static int prism2_ioctl_scan_req(local_info_t *local,
     struct prism2_hostapd_param *param)
{

 if ((local->iw_mode != IW_MODE_INFRA &&
      local->iw_mode != IW_MODE_ADHOC) ||
     (local->sta_fw_ver < PRISM2_FW_VER(1,3,1)))
  return -EOPNOTSUPP;

 if (!local->dev_enabled)
  return -ENETDOWN;

 return prism2_request_hostscan(local->dev, param->u.scan_req.ssid,
           param->u.scan_req.ssid_len);



}
