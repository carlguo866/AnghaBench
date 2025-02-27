
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct synthvid_msg_hdr {int dummy; } ;
struct TYPE_7__ {int dirt_count; TYPE_2__* rect; scalar_t__ video_output; } ;
struct TYPE_5__ {int size; int type; } ;
struct synthvid_msg {TYPE_3__ dirt; TYPE_1__ vid_hdr; } ;
struct synthvid_dirt {int dummy; } ;
struct hv_device {int dummy; } ;
struct TYPE_8__ {int yres; int xres; } ;
struct fb_info {TYPE_4__ var; int device; } ;
struct TYPE_6__ {int y2; int x2; scalar_t__ y1; scalar_t__ x1; } ;


 int SYNTHVID_DIRT ;
 struct hv_device* device_to_hv_device (int ) ;
 int memset (struct synthvid_msg*,int ,int) ;
 int synthvid_send (struct hv_device*,struct synthvid_msg*) ;

__attribute__((used)) static int synthvid_update(struct fb_info *info)
{
 struct hv_device *hdev = device_to_hv_device(info->device);
 struct synthvid_msg msg;

 memset(&msg, 0, sizeof(struct synthvid_msg));

 msg.vid_hdr.type = SYNTHVID_DIRT;
 msg.vid_hdr.size = sizeof(struct synthvid_msg_hdr) +
  sizeof(struct synthvid_dirt);
 msg.dirt.video_output = 0;
 msg.dirt.dirt_count = 1;
 msg.dirt.rect[0].x1 = 0;
 msg.dirt.rect[0].y1 = 0;
 msg.dirt.rect[0].x2 = info->var.xres;
 msg.dirt.rect[0].y2 = info->var.yres;

 synthvid_send(hdev, &msg);

 return 0;
}
