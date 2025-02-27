
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uinput_device {int state; struct input_dev* dev; } ;
struct input_dev {char* name; char* phys; } ;
typedef enum uinput_state { ____Placeholder_uinput_state } uinput_state ;


 int UIST_CREATED ;
 int UIST_NEW_DEVICE ;
 int input_free_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int kfree (char const*) ;
 int uinput_flush_requests (struct uinput_device*) ;

__attribute__((used)) static void uinput_destroy_device(struct uinput_device *udev)
{
 const char *name, *phys;
 struct input_dev *dev = udev->dev;
 enum uinput_state old_state = udev->state;

 udev->state = UIST_NEW_DEVICE;

 if (dev) {
  name = dev->name;
  phys = dev->phys;
  if (old_state == UIST_CREATED) {
   uinput_flush_requests(udev);
   input_unregister_device(dev);
  } else {
   input_free_device(dev);
  }
  kfree(name);
  kfree(phys);
  udev->dev = ((void*)0);
 }
}
