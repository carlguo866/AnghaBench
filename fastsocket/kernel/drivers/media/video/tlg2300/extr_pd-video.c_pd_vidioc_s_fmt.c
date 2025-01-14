
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ pixelformat; int width; int height; int bytesperline; int sizeimage; } ;
struct running_context {int tvnormid; struct v4l2_pix_format pix; } ;
struct video_data {struct running_context context; } ;
struct poseidon {int lock; struct video_data video_data; } ;
typedef scalar_t__ s32 ;


 int EBUSY ;
 scalar_t__ TLG_TUNER_VID_FORMAT_RGB_565 ;
 scalar_t__ TLG_TUNER_VID_FORMAT_YUV ;
 scalar_t__ TLG_TUNE_VID_RES_704 ;
 scalar_t__ TLG_TUNE_VID_RES_720 ;
 scalar_t__ V4L2_PIX_FMT_RGB565 ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 int V4L2_STD_525_60 ;
 int VIDEO_ROSOLU_SEL ;
 int VIDEO_STREAM_FMT_SEL ;
 int mutex_unlock (int *) ;
 scalar_t__ send_set_req (struct poseidon*,int ,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int pd_vidioc_s_fmt(struct poseidon *pd, struct v4l2_pix_format *pix)
{
 struct video_data *video = &pd->video_data;
 struct running_context *context = &video->context;
 struct v4l2_pix_format *pix_def = &context->pix;
 s32 ret = 0, cmd_status = 0, vid_resol;


 if (pix->pixelformat == V4L2_PIX_FMT_RGB565) {
  vid_resol = TLG_TUNER_VID_FORMAT_RGB_565;
 } else {
  pix->pixelformat = V4L2_PIX_FMT_YUYV;
  vid_resol = TLG_TUNER_VID_FORMAT_YUV;
 }
 ret = send_set_req(pd, VIDEO_STREAM_FMT_SEL,
    vid_resol, &cmd_status);


 vid_resol = TLG_TUNE_VID_RES_720;
 switch (pix->width) {
 case 704:
  vid_resol = TLG_TUNE_VID_RES_704;
  break;
 default:
  pix->width = 720;
 case 720:
  break;
 }
 ret |= send_set_req(pd, VIDEO_ROSOLU_SEL,
    vid_resol, &cmd_status);
 if (ret || cmd_status) {
  mutex_unlock(&pd->lock);
  return -EBUSY;
 }

 pix_def->pixelformat = pix->pixelformat;
 pix->height = (context->tvnormid & V4L2_STD_525_60) ? 480 : 576;


 if ((pix_def->width != pix->width)
  || (pix_def->height != pix->height)) {
  pix_def->width = pix->width;
  pix_def->height = pix->height;
  pix_def->bytesperline = pix->width * 2;
  pix_def->sizeimage = pix->width * pix->height * 2;
 }
 *pix = *pix_def;

 return 0;
}
