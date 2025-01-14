
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ type; scalar_t__ memory; scalar_t__ mapped; unsigned int count; unsigned int index; int state; struct go7007* go; } ;
struct go7007_file {unsigned int buf_count; int lock; struct v4l2_requestbuffers* bufs; struct go7007* go; } ;
struct go7007_buffer {int dummy; } ;
struct go7007 {int in_use; int hw_lock; scalar_t__ streaming; } ;
struct file {int dummy; } ;


 int BUF_STATE_IDLE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int kfree (struct v4l2_requestbuffers*) ;
 struct v4l2_requestbuffers* kmalloc (unsigned int,int ) ;
 int memset (struct v4l2_requestbuffers*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *req)
{
 struct go7007_file *gofh = priv;
 struct go7007 *go = gofh->go;
 int retval = -EBUSY;
 unsigned int count, i;

 if (go->streaming)
  return retval;

 if (req->type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
   req->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;

 mutex_lock(&gofh->lock);
 for (i = 0; i < gofh->buf_count; ++i)
  if (gofh->bufs[i].mapped > 0)
   goto unlock_and_return;

 mutex_lock(&go->hw_lock);
 if (go->in_use > 0 && gofh->buf_count == 0) {
  mutex_unlock(&go->hw_lock);
  goto unlock_and_return;
 }

 if (gofh->buf_count > 0)
  kfree(gofh->bufs);

 retval = -ENOMEM;
 count = req->count;
 if (count > 0) {
  if (count < 2)
   count = 2;
  if (count > 32)
   count = 32;

  gofh->bufs = kmalloc(count * sizeof(struct go7007_buffer),
         GFP_KERNEL);

  if (!gofh->bufs) {
   mutex_unlock(&go->hw_lock);
   goto unlock_and_return;
  }

  memset(gofh->bufs, 0, count * sizeof(struct go7007_buffer));

  for (i = 0; i < count; ++i) {
   gofh->bufs[i].go = go;
   gofh->bufs[i].index = i;
   gofh->bufs[i].state = BUF_STATE_IDLE;
   gofh->bufs[i].mapped = 0;
  }

  go->in_use = 1;
 } else {
  go->in_use = 0;
 }

 gofh->buf_count = count;
 mutex_unlock(&go->hw_lock);
 mutex_unlock(&gofh->lock);

 memset(req, 0, sizeof(*req));

 req->count = count;
 req->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 req->memory = V4L2_MEMORY_MMAP;

 return 0;

unlock_and_return:
 mutex_unlock(&gofh->lock);
 return retval;
}
