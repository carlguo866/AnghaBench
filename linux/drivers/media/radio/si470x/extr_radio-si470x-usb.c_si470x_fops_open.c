
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int v4l2_fh_open (struct file*) ;

__attribute__((used)) static int si470x_fops_open(struct file *file)
{
 return v4l2_fh_open(file);
}
