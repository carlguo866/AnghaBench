
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_4__ {int x; int y; } ;
struct hdmi_drm_infoframe {size_t length; size_t type; size_t version; int max_display_mastering_luminance; int min_display_mastering_luminance; int max_cll; int max_fall; TYPE_2__ white_point; TYPE_1__* display_primaries; int metadata_type; int eotf; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int x; int y; } ;


 size_t ENOSPC ;
 size_t HDMI_INFOFRAME_HEADER_SIZE ;
 int hdmi_infoframe_set_checksum (void*,size_t) ;
 int memset (void*,int ,size_t) ;

ssize_t hdmi_drm_infoframe_pack_only(const struct hdmi_drm_infoframe *frame,
         void *buffer, size_t size)
{
 u8 *ptr = buffer;
 size_t length;
 int i;

 length = HDMI_INFOFRAME_HEADER_SIZE + frame->length;

 if (size < length)
  return -ENOSPC;

 memset(buffer, 0, size);

 ptr[0] = frame->type;
 ptr[1] = frame->version;
 ptr[2] = frame->length;
 ptr[3] = 0;


 ptr += HDMI_INFOFRAME_HEADER_SIZE;

 *ptr++ = frame->eotf;
 *ptr++ = frame->metadata_type;

 for (i = 0; i < 3; i++) {
  *ptr++ = frame->display_primaries[i].x;
  *ptr++ = frame->display_primaries[i].x >> 8;
  *ptr++ = frame->display_primaries[i].y;
  *ptr++ = frame->display_primaries[i].y >> 8;
 }

 *ptr++ = frame->white_point.x;
 *ptr++ = frame->white_point.x >> 8;

 *ptr++ = frame->white_point.y;
 *ptr++ = frame->white_point.y >> 8;

 *ptr++ = frame->max_display_mastering_luminance;
 *ptr++ = frame->max_display_mastering_luminance >> 8;

 *ptr++ = frame->min_display_mastering_luminance;
 *ptr++ = frame->min_display_mastering_luminance >> 8;

 *ptr++ = frame->max_cll;
 *ptr++ = frame->max_cll >> 8;

 *ptr++ = frame->max_fall;
 *ptr++ = frame->max_fall >> 8;

 hdmi_infoframe_set_checksum(buffer, length);

 return length;
}
