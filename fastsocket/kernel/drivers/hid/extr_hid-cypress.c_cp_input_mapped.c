
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ type; scalar_t__ code; int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 unsigned long CP_2WHEEL_MOUSE_HACK ;
 scalar_t__ EV_REL ;
 int REL_HWHEEL ;
 scalar_t__ REL_WHEEL ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static int cp_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 unsigned long quirks = (unsigned long)hid_get_drvdata(hdev);

 if (!(quirks & CP_2WHEEL_MOUSE_HACK))
  return 0;

 if (usage->type == EV_REL && usage->code == REL_WHEEL)
  set_bit(REL_HWHEEL, *bit);
 if (usage->hid == 0x00090005)
  return -1;

 return 0;
}
