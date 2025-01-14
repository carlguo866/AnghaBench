
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {unsigned int current_input; } ;


 int dprintk (int,char*,unsigned int) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *fh, unsigned int *input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

 *input = av7110->current_input;
 dprintk(2, "VIDIOC_G_INPUT: %d\n", *input);
 return 0;
}
