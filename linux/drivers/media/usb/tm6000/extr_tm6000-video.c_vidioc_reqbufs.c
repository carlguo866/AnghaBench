
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int dummy; } ;
struct tm6000_fh {int vb_vidq; } ;
struct file {int dummy; } ;


 int videobuf_reqbufs (int *,struct v4l2_requestbuffers*) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
      struct v4l2_requestbuffers *p)
{
 struct tm6000_fh *fh = priv;

 return videobuf_reqbufs(&fh->vb_vidq, p);
}
