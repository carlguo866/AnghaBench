
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int type; } ;
typedef int buf ;


 int GET_STATUS_CTL ;
 int LED_FORMATTER ;
 int recv_control_msg (struct pwc_device*,int ,int ,unsigned char**,int) ;

__attribute__((used)) static int pwc_get_leds(struct pwc_device *pdev, int *on_value, int *off_value)
{
 unsigned char buf[2];
 int ret;

 if (pdev->type < 730) {
  *on_value = -1;
  *off_value = -1;
  return 0;
 }

 ret = recv_control_msg(pdev,
  GET_STATUS_CTL, LED_FORMATTER, &buf, sizeof(buf));
 if (ret < 0)
  return ret;
 *on_value = buf[0] * 100;
 *off_value = buf[1] * 100;
 return 0;
}
