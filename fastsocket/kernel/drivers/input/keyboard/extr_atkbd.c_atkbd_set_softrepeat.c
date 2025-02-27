
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atkbd {unsigned long softrepeat; unsigned char softraw; struct input_dev* dev; int write; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int atkbd_set_device_attrs (struct atkbd*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 scalar_t__ strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t atkbd_set_softrepeat(struct atkbd *atkbd, const char *buf, size_t count)
{
 struct input_dev *old_dev, *new_dev;
 unsigned long value;
 int err;
 unsigned char old_softrepeat, old_softraw;

 if (!atkbd->write)
  return -EIO;

 if (strict_strtoul(buf, 10, &value) || value > 1)
  return -EINVAL;

 if (atkbd->softrepeat != value) {
  old_dev = atkbd->dev;
  old_softrepeat = atkbd->softrepeat;
  old_softraw = atkbd->softraw;

  new_dev = input_allocate_device();
  if (!new_dev)
   return -ENOMEM;

  atkbd->dev = new_dev;
  atkbd->softrepeat = value;
  if (atkbd->softrepeat)
   atkbd->softraw = 1;
  atkbd_set_device_attrs(atkbd);

  err = input_register_device(atkbd->dev);
  if (err) {
   input_free_device(new_dev);

   atkbd->dev = old_dev;
   atkbd->softrepeat = old_softrepeat;
   atkbd->softraw = old_softraw;
   atkbd_set_device_attrs(atkbd);

   return err;
  }
  input_unregister_device(old_dev);
 }
 return count;
}
