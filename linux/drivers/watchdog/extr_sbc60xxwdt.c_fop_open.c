
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 scalar_t__ nowayout ;
 int stream_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int wdt_is_open ;
 int wdt_startup () ;

__attribute__((used)) static int fop_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &wdt_is_open))
  return -EBUSY;

 if (nowayout)
  __module_get(THIS_MODULE);


 wdt_startup();
 return stream_open(inode, file);
}
