
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int key; } ;
struct hid_usage {scalar_t__ type; scalar_t__ hat_min; scalar_t__ hat_max; int hat_dir; int code; int hid; size_t usage_index; } ;
struct hid_field {int logical_minimum; int logical_maximum; int flags; size_t maxusage; int* value; TYPE_1__* hidinput; } ;
struct hid_device {unsigned int quirks; } ;
typedef int __s32 ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {struct input_dev* input; } ;


 int ABS_VOLUME ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 scalar_t__ EV_ABS ;
 scalar_t__ EV_KEY ;
 scalar_t__ EV_MSC ;
 scalar_t__ EV_PWR ;
 scalar_t__ EV_REL ;
 int HID_MAIN_ITEM_BUFFERED_BYTE ;
 int HID_MAIN_ITEM_NULL_STATE ;
 int HID_MAIN_ITEM_RELATIVE ;
 int HID_MAIN_ITEM_VARIABLE ;
 unsigned int HID_QUIRK_INVERT ;
 unsigned int HID_QUIRK_NOTOUCH ;
 int HID_UP_DIGITIZER ;
 int HID_UP_PID ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int MSC_SCAN ;
 int REL_HWHEEL_HI_RES ;
 int REL_WHEEL_HI_RES ;
 int abs (int) ;
 int clamp (int,int,int) ;
 int dbg_hid (char*,...) ;
 TYPE_2__* hid_hat_to_axis ;
 int hidinput_handle_scroll (struct hid_usage*,struct input_dev*,int) ;
 int hidinput_update_battery (struct hid_device*,int) ;
 int input_event (struct input_dev*,scalar_t__,int,int) ;
 int input_sync (struct input_dev*) ;
 int test_bit (int,int ) ;

void hidinput_hid_event(struct hid_device *hid, struct hid_field *field, struct hid_usage *usage, __s32 value)
{
 struct input_dev *input;
 unsigned *quirks = &hid->quirks;

 if (!usage->type)
  return;

 if (usage->type == EV_PWR) {
  hidinput_update_battery(hid, value);
  return;
 }

 if (!field->hidinput)
  return;

 input = field->hidinput->input;

 if (usage->hat_min < usage->hat_max || usage->hat_dir) {
  int hat_dir = usage->hat_dir;
  if (!hat_dir)
   hat_dir = (value - usage->hat_min) * 8 / (usage->hat_max - usage->hat_min + 1) + 1;
  if (hat_dir < 0 || hat_dir > 8) hat_dir = 0;
  input_event(input, usage->type, usage->code , hid_hat_to_axis[hat_dir].x);
  input_event(input, usage->type, usage->code + 1, hid_hat_to_axis[hat_dir].y);
  return;
 }

 if (usage->hid == (HID_UP_DIGITIZER | 0x003c)) {
  *quirks = value ? (*quirks | HID_QUIRK_INVERT) : (*quirks & ~HID_QUIRK_INVERT);
  return;
 }

 if (usage->hid == (HID_UP_DIGITIZER | 0x0032)) {
  if (value) {
   input_event(input, usage->type, (*quirks & HID_QUIRK_INVERT) ? BTN_TOOL_RUBBER : usage->code, 1);
   return;
  }
  input_event(input, usage->type, usage->code, 0);
  input_event(input, usage->type, BTN_TOOL_RUBBER, 0);
  return;
 }

 if (usage->hid == (HID_UP_DIGITIZER | 0x0030) && (*quirks & HID_QUIRK_NOTOUCH)) {
  int a = field->logical_minimum;
  int b = field->logical_maximum;
  input_event(input, EV_KEY, BTN_TOUCH, value > a + ((b - a) >> 3));
 }

 if (usage->hid == (HID_UP_PID | 0x83UL)) {
  dbg_hid("Maximum Effects - %d\n",value);
  return;
 }

 if (usage->hid == (HID_UP_PID | 0x7fUL)) {
  dbg_hid("PID Pool Report\n");
  return;
 }

 if ((usage->type == EV_KEY) && (usage->code == 0))
  return;

 if ((usage->type == EV_REL) && (usage->code == REL_WHEEL_HI_RES ||
     usage->code == REL_HWHEEL_HI_RES)) {
  hidinput_handle_scroll(usage, input, value);
  return;
 }

 if ((usage->type == EV_ABS) && (field->flags & HID_MAIN_ITEM_RELATIVE) &&
   (usage->code == ABS_VOLUME)) {
  int count = abs(value);
  int direction = value > 0 ? KEY_VOLUMEUP : KEY_VOLUMEDOWN;
  int i;

  for (i = 0; i < count; i++) {
   input_event(input, EV_KEY, direction, 1);
   input_sync(input);
   input_event(input, EV_KEY, direction, 0);
   input_sync(input);
  }
  return;
 }
 if ((field->flags & HID_MAIN_ITEM_VARIABLE) &&
     (field->logical_minimum < field->logical_maximum)) {
  if (field->flags & HID_MAIN_ITEM_NULL_STATE &&
      (value < field->logical_minimum ||
       value > field->logical_maximum)) {
   dbg_hid("Ignoring out-of-range value %x\n", value);
   return;
  }
  value = clamp(value,
         field->logical_minimum,
         field->logical_maximum);
 }
 if (!(field->flags & (HID_MAIN_ITEM_RELATIVE |
                       HID_MAIN_ITEM_BUFFERED_BYTE)) &&
         (field->flags & HID_MAIN_ITEM_VARIABLE) &&
     usage->usage_index < field->maxusage &&
     value == field->value[usage->usage_index])
  return;


 if (usage->type == EV_KEY &&
     (!test_bit(usage->code, input->key)) == value)
  input_event(input, EV_MSC, MSC_SCAN, usage->hid);

 input_event(input, usage->type, usage->code, value);

 if ((field->flags & HID_MAIN_ITEM_RELATIVE) &&
     usage->type == EV_KEY && value) {
  input_sync(input);
  input_event(input, usage->type, usage->code, 0);
 }
}
