
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct cx8802_fh {int mpegq; } ;


 int videobuf_qbuf (int *,struct v4l2_buffer*) ;

__attribute__((used)) static int vidioc_qbuf (struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct cx8802_fh *fh = priv;
 return (videobuf_qbuf(&fh->mpegq, p));
}
