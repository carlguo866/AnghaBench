
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_data {unsigned char serial; unsigned char id; int tool; } ;
struct input_dev {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int input_event (struct input_dev*,int ,int ,unsigned char) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void wacom_i4_parse_pen_report(struct wacom_data *wdata,
   struct input_dev *input, unsigned char *data)
{
 __u16 x, y, pressure;
 __u8 distance;

 switch (data[1]) {
 case 0x80:
  input_report_key(input, BTN_TOUCH, 0);
  input_report_abs(input, ABS_PRESSURE, 0);
  input_report_key(input, wdata->tool, 0);
  input_report_abs(input, ABS_MISC, 0);
  input_event(input, EV_MSC, MSC_SERIAL, wdata->serial);
  wdata->tool = 0;
  input_sync(input);
  break;
 case 0xC2:
  wdata->id = ((data[2] << 4) | (data[3] >> 4) |
   ((data[7] & 0x0f) << 20) |
   ((data[8] & 0xf0) << 12));
  wdata->serial = ((data[3] & 0x0f) << 28) +
    (data[4] << 20) + (data[5] << 12) +
    (data[6] << 4) + (data[7] >> 4);

  switch (wdata->id) {
  case 0x100802:
   wdata->tool = BTN_TOOL_PEN;
   break;
  case 0x10080A:
   wdata->tool = BTN_TOOL_RUBBER;
   break;
  }
  break;
 default:
  x = data[2] << 9 | data[3] << 1 | ((data[9] & 0x02) >> 1);
  y = data[4] << 9 | data[5] << 1 | (data[9] & 0x01);
  pressure = (data[6] << 3) | ((data[7] & 0xC0) >> 5)
   | (data[1] & 0x01);
  distance = (data[9] >> 2) & 0x3f;

  input_report_key(input, BTN_TOUCH, pressure > 1);

  input_report_key(input, BTN_STYLUS, data[1] & 0x02);
  input_report_key(input, BTN_STYLUS2, data[1] & 0x04);
  input_report_key(input, wdata->tool, 1);
  input_report_abs(input, ABS_X, x);
  input_report_abs(input, ABS_Y, y);
  input_report_abs(input, ABS_DISTANCE, distance);
  input_report_abs(input, ABS_PRESSURE, pressure);
  input_report_abs(input, ABS_MISC, wdata->id);
  input_event(input, EV_MSC, MSC_SERIAL, wdata->serial);
  input_sync(input);
  break;
 }

 return;
}
