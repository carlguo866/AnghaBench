
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_lock; scalar_t__ lo_backing_file; } ;
typedef size_t ssize_t ;


 scalar_t__ IS_ERR_OR_NULL (char*) ;
 scalar_t__ PAGE_SIZE ;
 size_t PTR_ERR (char*) ;
 char* file_path (scalar_t__,char*,scalar_t__) ;
 int memmove (char*,char*,size_t) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 size_t strlen (char*) ;

__attribute__((used)) static ssize_t loop_attr_backing_file_show(struct loop_device *lo, char *buf)
{
 ssize_t ret;
 char *p = ((void*)0);

 spin_lock_irq(&lo->lo_lock);
 if (lo->lo_backing_file)
  p = file_path(lo->lo_backing_file, buf, PAGE_SIZE - 1);
 spin_unlock_irq(&lo->lo_lock);

 if (IS_ERR_OR_NULL(p))
  ret = PTR_ERR(p);
 else {
  ret = strlen(p);
  memmove(buf, p, ret);
  buf[ret++] = '\n';
  buf[ret] = 0;
 }

 return ret;
}
