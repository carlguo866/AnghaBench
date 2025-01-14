
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct video_device {int device_caps; int * lock; int * ioctl_ops; int release; int vfl_dir; int vfl_type; int name; struct v4l2_device* v4l2_dev; int * fops; struct vb2_queue* queue; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int timestamp_flags; struct aspeed_video* drv_priv; int * mem_ops; int * ops; int * lock; int dev; int type; } ;
struct v4l2_device {int dev; TYPE_2__* ctrl_handler; } ;
struct aspeed_video_buffer {int dummy; } ;
struct TYPE_7__ {scalar_t__ error; } ;
struct TYPE_6__ {int quantization; int colorspace; int field; int pixelformat; } ;
struct aspeed_video {int dev; TYPE_2__ ctrl_handler; int video_lock; int v4l2_input_status; TYPE_1__ pix_fmt; struct video_device vdev; struct vb2_queue queue; struct v4l2_device v4l2_dev; } ;


 scalar_t__ ASPEED_VIDEO_JPEG_NUM_QUALITIES ;
 int BIT (int ) ;
 int DEVICE_NAME ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CID_JPEG_CHROMA_SUBSAMPLING ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int V4L2_IN_ST_NO_SIGNAL ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_420 ;
 int V4L2_JPEG_CHROMA_SUBSAMPLING_444 ;
 int V4L2_PIX_FMT_JPEG ;
 int V4L2_QUANTIZATION_FULL_RANGE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int aspeed_video_ctrl_ops ;
 int aspeed_video_ioctl_ops ;
 int aspeed_video_v4l2_fops ;
 int aspeed_video_vb2_ops ;
 int dev_err (int ,char*,...) ;
 int strscpy (int ,int ,int) ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,scalar_t__,int,int ) ;
 int v4l2_ctrl_new_std_menu (TYPE_2__*,int *,int ,int ,int const,int ) ;
 int v4l2_device_register (int ,struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int vb2_queue_release (struct vb2_queue*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct aspeed_video*) ;

__attribute__((used)) static int aspeed_video_setup_video(struct aspeed_video *video)
{
 const u64 mask = ~(BIT(V4L2_JPEG_CHROMA_SUBSAMPLING_444) |
      BIT(V4L2_JPEG_CHROMA_SUBSAMPLING_420));
 struct v4l2_device *v4l2_dev = &video->v4l2_dev;
 struct vb2_queue *vbq = &video->queue;
 struct video_device *vdev = &video->vdev;
 int rc;

 video->pix_fmt.pixelformat = V4L2_PIX_FMT_JPEG;
 video->pix_fmt.field = V4L2_FIELD_NONE;
 video->pix_fmt.colorspace = V4L2_COLORSPACE_SRGB;
 video->pix_fmt.quantization = V4L2_QUANTIZATION_FULL_RANGE;
 video->v4l2_input_status = V4L2_IN_ST_NO_SIGNAL;

 rc = v4l2_device_register(video->dev, v4l2_dev);
 if (rc) {
  dev_err(video->dev, "Failed to register v4l2 device\n");
  return rc;
 }

 v4l2_ctrl_handler_init(&video->ctrl_handler, 2);
 v4l2_ctrl_new_std(&video->ctrl_handler, &aspeed_video_ctrl_ops,
     V4L2_CID_JPEG_COMPRESSION_QUALITY, 0,
     ASPEED_VIDEO_JPEG_NUM_QUALITIES - 1, 1, 0);
 v4l2_ctrl_new_std_menu(&video->ctrl_handler, &aspeed_video_ctrl_ops,
          V4L2_CID_JPEG_CHROMA_SUBSAMPLING,
          V4L2_JPEG_CHROMA_SUBSAMPLING_420, mask,
          V4L2_JPEG_CHROMA_SUBSAMPLING_444);

 if (video->ctrl_handler.error) {
  v4l2_ctrl_handler_free(&video->ctrl_handler);
  v4l2_device_unregister(v4l2_dev);

  dev_err(video->dev, "Failed to init controls: %d\n",
   video->ctrl_handler.error);
  return rc;
 }

 v4l2_dev->ctrl_handler = &video->ctrl_handler;

 vbq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vbq->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
 vbq->dev = v4l2_dev->dev;
 vbq->lock = &video->video_lock;
 vbq->ops = &aspeed_video_vb2_ops;
 vbq->mem_ops = &vb2_dma_contig_memops;
 vbq->drv_priv = video;
 vbq->buf_struct_size = sizeof(struct aspeed_video_buffer);
 vbq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 vbq->min_buffers_needed = 3;

 rc = vb2_queue_init(vbq);
 if (rc) {
  v4l2_ctrl_handler_free(&video->ctrl_handler);
  v4l2_device_unregister(v4l2_dev);

  dev_err(video->dev, "Failed to init vb2 queue\n");
  return rc;
 }

 vdev->queue = vbq;
 vdev->fops = &aspeed_video_v4l2_fops;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
  V4L2_CAP_STREAMING;
 vdev->v4l2_dev = v4l2_dev;
 strscpy(vdev->name, DEVICE_NAME, sizeof(vdev->name));
 vdev->vfl_type = VFL_TYPE_GRABBER;
 vdev->vfl_dir = VFL_DIR_RX;
 vdev->release = video_device_release_empty;
 vdev->ioctl_ops = &aspeed_video_ioctl_ops;
 vdev->lock = &video->video_lock;

 video_set_drvdata(vdev, video);
 rc = video_register_device(vdev, VFL_TYPE_GRABBER, 0);
 if (rc) {
  vb2_queue_release(vbq);
  v4l2_ctrl_handler_free(&video->ctrl_handler);
  v4l2_device_unregister(v4l2_dev);

  dev_err(video->dev, "Failed to register video device\n");
  return rc;
 }

 return 0;
}
