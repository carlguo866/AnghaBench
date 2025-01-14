
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct v4l2_rect {int width; int height; } ;
struct v4l2_pix_format {int width; int height; int priv; } ;
struct TYPE_9__ {scalar_t__ force_munmap; } ;
struct TYPE_7__ {struct v4l2_rect bounds; } ;
struct TYPE_8__ {TYPE_1__ cropcap; struct v4l2_pix_format pix_format; } ;
struct et61x251_device {scalar_t__ nbuffers; TYPE_6__* frame; TYPE_3__ module_param; TYPE_2__ sensor; } ;
typedef enum et61x251_io_method { ____Placeholder_et61x251_io_method } et61x251_io_method ;
struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_11__ {size_t length; scalar_t__ flags; int memory; int field; scalar_t__ sequence; int type; TYPE_4__ m; scalar_t__ index; } ;
struct TYPE_12__ {TYPE_5__ buf; void* bufmem; } ;


 scalar_t__ ET61X251_MAX_FRAMES ;
 int IO_READ ;
 scalar_t__ PAGE_ALIGN (size_t const) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_NONE ;
 int V4L2_MEMORY_MMAP ;
 void* vmalloc_32_user (scalar_t__) ;

__attribute__((used)) static u32
et61x251_request_buffers(struct et61x251_device* cam, u32 count,
    enum et61x251_io_method io)
{
 struct v4l2_pix_format* p = &(cam->sensor.pix_format);
 struct v4l2_rect* r = &(cam->sensor.cropcap.bounds);
 const size_t imagesize = cam->module_param.force_munmap ||
     io == IO_READ ?
     (p->width * p->height * p->priv) / 8 :
     (r->width * r->height * p->priv) / 8;
 void* buff = ((void*)0);
 u32 i;

 if (count > ET61X251_MAX_FRAMES)
  count = ET61X251_MAX_FRAMES;

 cam->nbuffers = count;
 while (cam->nbuffers > 0) {
  if ((buff = vmalloc_32_user(cam->nbuffers *
         PAGE_ALIGN(imagesize))))
   break;
  cam->nbuffers--;
 }

 for (i = 0; i < cam->nbuffers; i++) {
  cam->frame[i].bufmem = buff + i*PAGE_ALIGN(imagesize);
  cam->frame[i].buf.index = i;
  cam->frame[i].buf.m.offset = i*PAGE_ALIGN(imagesize);
  cam->frame[i].buf.length = imagesize;
  cam->frame[i].buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  cam->frame[i].buf.sequence = 0;
  cam->frame[i].buf.field = V4L2_FIELD_NONE;
  cam->frame[i].buf.memory = V4L2_MEMORY_MMAP;
  cam->frame[i].buf.flags = 0;
 }

 return cam->nbuffers;
}
