
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx25821_channel {TYPE_1__* dev; } ;
struct TYPE_2__ {int tvnorm; } ;


 struct cx25821_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int cx25821_vidioc_g_std(struct file *file, void *priv, v4l2_std_id *tvnorms)
{
 struct cx25821_channel *chan = video_drvdata(file);

 *tvnorms = chan->dev->tvnorm;
 return 0;
}
