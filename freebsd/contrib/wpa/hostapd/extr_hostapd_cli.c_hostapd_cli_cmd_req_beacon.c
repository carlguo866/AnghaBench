
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int hostapd_cli_cmd (struct wpa_ctrl*,char*,int,int,char**) ;

__attribute__((used)) static int hostapd_cli_cmd_req_beacon(struct wpa_ctrl *ctrl, int argc,
          char *argv[])
{
 return hostapd_cli_cmd(ctrl, "REQ_BEACON", 2, argc, argv);
}
