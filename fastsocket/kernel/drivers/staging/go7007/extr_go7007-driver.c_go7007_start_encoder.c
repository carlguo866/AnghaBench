
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct go7007 {int modet_enable; int video_dev; scalar_t__ seen_frame; scalar_t__ parse_length; int state; TYPE_1__* modet; int dvd_mode; } ;
struct TYPE_2__ {int pixel_threshold; int motion_threshold; int mb_threshold; scalar_t__ enable; } ;


 int STATE_DATA ;
 scalar_t__ go7007_construct_fw_image (struct go7007*,int **,int*) ;
 scalar_t__ go7007_read_interrupt (struct go7007*,int *,int *) ;
 scalar_t__ go7007_send_firmware (struct go7007*,int *,int) ;
 scalar_t__ go7007_stream_start (struct go7007*) ;
 int kfree (int *) ;
 int v4l2_err (int ,char*) ;

int go7007_start_encoder(struct go7007 *go)
{
 u8 *fw;
 int fw_len, rv = 0, i;
 u16 intr_val, intr_data;

 go->modet_enable = 0;
 if (!go->dvd_mode)
  for (i = 0; i < 4; ++i) {
   if (go->modet[i].enable) {
    go->modet_enable = 1;
    continue;
   }
   go->modet[i].pixel_threshold = 32767;
   go->modet[i].motion_threshold = 32767;
   go->modet[i].mb_threshold = 32767;
  }

 if (go7007_construct_fw_image(go, &fw, &fw_len) < 0)
  return -1;

 if (go7007_send_firmware(go, fw, fw_len) < 0 ||
   go7007_read_interrupt(go, &intr_val, &intr_data) < 0) {
  v4l2_err(go->video_dev, "error transferring firmware\n");
  rv = -1;
  goto start_error;
 }

 go->state = STATE_DATA;
 go->parse_length = 0;
 go->seen_frame = 0;
 if (go7007_stream_start(go) < 0) {
  v4l2_err(go->video_dev, "error starting stream transfer\n");
  rv = -1;
  goto start_error;
 }

start_error:
 kfree(fw);
 return rv;
}
