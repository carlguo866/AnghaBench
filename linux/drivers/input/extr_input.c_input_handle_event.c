
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_value {unsigned int type; unsigned int code; int value; } ;
struct input_dev {int num_vals; int max_vals; struct input_value* vals; int * timestamp; TYPE_1__* mt; int (* event ) (struct input_dev*,unsigned int,unsigned int,int) ;} ;
struct TYPE_2__ {int slot; } ;


 unsigned int ABS_MT_SLOT ;
 unsigned int EV_ABS ;
 unsigned int EV_SYN ;
 size_t INPUT_CLK_MONO ;
 int INPUT_FLUSH ;
 int INPUT_IGNORE_EVENT ;
 int INPUT_PASS_TO_DEVICE ;
 int INPUT_PASS_TO_HANDLERS ;
 int INPUT_SLOT ;
 int add_input_randomness (unsigned int,unsigned int,int) ;
 int input_get_disposition (struct input_dev*,unsigned int,unsigned int,int*) ;
 int input_pass_values (struct input_dev*,struct input_value*,int) ;
 struct input_value input_value_sync ;
 int ktime_set (int ,int ) ;
 int stub1 (struct input_dev*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void input_handle_event(struct input_dev *dev,
          unsigned int type, unsigned int code, int value)
{
 int disposition = input_get_disposition(dev, type, code, &value);

 if (disposition != INPUT_IGNORE_EVENT && type != EV_SYN)
  add_input_randomness(type, code, value);

 if ((disposition & INPUT_PASS_TO_DEVICE) && dev->event)
  dev->event(dev, type, code, value);

 if (!dev->vals)
  return;

 if (disposition & INPUT_PASS_TO_HANDLERS) {
  struct input_value *v;

  if (disposition & INPUT_SLOT) {
   v = &dev->vals[dev->num_vals++];
   v->type = EV_ABS;
   v->code = ABS_MT_SLOT;
   v->value = dev->mt->slot;
  }

  v = &dev->vals[dev->num_vals++];
  v->type = type;
  v->code = code;
  v->value = value;
 }

 if (disposition & INPUT_FLUSH) {
  if (dev->num_vals >= 2)
   input_pass_values(dev, dev->vals, dev->num_vals);
  dev->num_vals = 0;






  dev->timestamp[INPUT_CLK_MONO] = ktime_set(0, 0);
 } else if (dev->num_vals >= dev->max_vals - 2) {
  dev->vals[dev->num_vals++] = input_value_sync;
  input_pass_values(dev, dev->vals, dev->num_vals);
  dev->num_vals = 0;
 }

}
