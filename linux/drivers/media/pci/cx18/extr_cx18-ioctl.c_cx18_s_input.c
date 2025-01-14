
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* v4l2_std_id ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18_card_video_input {scalar_t__ video_type; int audio_index; } ;
struct cx18 {unsigned int nof_inputs; unsigned int active_input; TYPE_3__* streams; void* tuner_std; TYPE_1__* card; int audio_input; } ;
struct TYPE_5__ {void* tvnorms; } ;
struct TYPE_6__ {TYPE_2__ video_dev; } ;
struct TYPE_4__ {struct cx18_card_video_input* video_inputs; } ;


 int CX18_DEBUG_INFO (char*,...) ;
 size_t CX18_ENC_STREAM_TYPE_MPG ;
 size_t CX18_ENC_STREAM_TYPE_VBI ;
 size_t CX18_ENC_STREAM_TYPE_YUV ;
 int EINVAL ;
 scalar_t__ V4L2_INPUT_TYPE_TUNER ;
 void* V4L2_STD_ALL ;
 int cx18_audio_set_io (struct cx18*) ;
 int cx18_mute (struct cx18*) ;
 int cx18_unmute (struct cx18*) ;
 int cx18_video_set_io (struct cx18*) ;
 struct cx18_open_id* fh2id (void*) ;

int cx18_s_input(struct file *file, void *fh, unsigned int inp)
{
 struct cx18_open_id *id = fh2id(fh);
 struct cx18 *cx = id->cx;
 v4l2_std_id std = V4L2_STD_ALL;
 const struct cx18_card_video_input *card_input =
    cx->card->video_inputs + inp;

 if (inp >= cx->nof_inputs)
  return -EINVAL;

 if (inp == cx->active_input) {
  CX18_DEBUG_INFO("Input unchanged\n");
  return 0;
 }

 CX18_DEBUG_INFO("Changing input from %d to %d\n",
   cx->active_input, inp);

 cx->active_input = inp;

 cx->audio_input = cx->card->video_inputs[inp].audio_index;
 if (card_input->video_type == V4L2_INPUT_TYPE_TUNER)
  std = cx->tuner_std;
 cx->streams[CX18_ENC_STREAM_TYPE_MPG].video_dev.tvnorms = std;
 cx->streams[CX18_ENC_STREAM_TYPE_YUV].video_dev.tvnorms = std;
 cx->streams[CX18_ENC_STREAM_TYPE_VBI].video_dev.tvnorms = std;



 cx18_mute(cx);
 cx18_video_set_io(cx);
 cx18_audio_set_io(cx);
 cx18_unmute(cx);
 return 0;
}
