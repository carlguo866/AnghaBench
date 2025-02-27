
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenfb_info {int fb_info; } ;
struct xenbus_device {int dev; } ;


 struct xenfb_info* dev_get_drvdata (int *) ;
 int xenfb_connect_backend (struct xenbus_device*,struct xenfb_info*) ;
 int xenfb_disconnect_backend (struct xenfb_info*) ;
 int xenfb_init_shared_page (struct xenfb_info*,int ) ;

__attribute__((used)) static int xenfb_resume(struct xenbus_device *dev)
{
 struct xenfb_info *info = dev_get_drvdata(&dev->dev);

 xenfb_disconnect_backend(info);
 xenfb_init_shared_page(info, info->fb_info);
 return xenfb_connect_backend(dev, info);
}
