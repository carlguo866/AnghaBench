
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;
typedef int addr ;


 int snprintf (char*,int,char*,char*) ;
 scalar_t__ wpa_ctrl_command_sta (struct wpa_ctrl*,char*,char*,int,int) ;

__attribute__((used)) static int hostapd_cli_cmd_all_sta(struct wpa_ctrl *ctrl, int argc,
       char *argv[])
{
 char addr[32], cmd[64];

 if (wpa_ctrl_command_sta(ctrl, "STA-FIRST", addr, sizeof(addr), 1))
  return 0;
 do {
  snprintf(cmd, sizeof(cmd), "STA-NEXT %s", addr);
 } while (wpa_ctrl_command_sta(ctrl, cmd, addr, sizeof(addr), 1) == 0);

 return -1;
}
