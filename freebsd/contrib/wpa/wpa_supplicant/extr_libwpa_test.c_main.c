
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 scalar_t__ wpa_ctrl_attach (struct wpa_ctrl*) ;
 int wpa_ctrl_close (struct wpa_ctrl*) ;
 int wpa_ctrl_detach (struct wpa_ctrl*) ;
 struct wpa_ctrl* wpa_ctrl_open (char*) ;
 scalar_t__ wpa_ctrl_pending (struct wpa_ctrl*) ;
 int wpa_ctrl_recv (struct wpa_ctrl*,char*,size_t*) ;

int main(int argc, char *argv[])
{
 struct wpa_ctrl *ctrl;

 ctrl = wpa_ctrl_open("foo");
 if (!ctrl)
  return -1;
 if (wpa_ctrl_attach(ctrl) == 0)
  wpa_ctrl_detach(ctrl);
 if (wpa_ctrl_pending(ctrl)) {
  char buf[10];
  size_t len;

  len = sizeof(buf);
  wpa_ctrl_recv(ctrl, buf, &len);
 }
 wpa_ctrl_close(ctrl);

 return 0;
}
