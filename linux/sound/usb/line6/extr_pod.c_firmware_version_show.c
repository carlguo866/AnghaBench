
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int firmware_version; } ;
struct snd_card {struct usb_line6_pod* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct snd_card* dev_to_snd_card (struct device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t firmware_version_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct snd_card *card = dev_to_snd_card(dev);
 struct usb_line6_pod *pod = card->private_data;

 return sprintf(buf, "%d.%02d\n", pod->firmware_version / 100,
         pod->firmware_version % 100);
}
