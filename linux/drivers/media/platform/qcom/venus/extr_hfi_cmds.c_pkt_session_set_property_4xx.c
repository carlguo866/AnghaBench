
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hfi_videocores_usage_type {int video_core_enable_mask; } ;
struct hfi_video_work_mode {int video_work_mode; } ;
struct TYPE_3__ {int size; int pkt_type; } ;
struct TYPE_4__ {TYPE_1__ hdr; int session_id; } ;
struct hfi_session_set_property_pkt {int* data; int num_properties; TYPE_2__ shdr; } ;
struct hfi_buffer_count_actual_4xx {int count_min_host; int type; int count_actual; } ;
struct hfi_buffer_count_actual {int count_actual; int type; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int HFI_CMD_SESSION_SET_PROPERTY ;






 int hash32_ptr (void*) ;
 int pkt_session_set_property_3xx (struct hfi_session_set_property_pkt*,void*,int,void*) ;

__attribute__((used)) static int
pkt_session_set_property_4xx(struct hfi_session_set_property_pkt *pkt,
        void *cookie, u32 ptype, void *pdata)
{
 void *prop_data;

 if (!pkt || !cookie || !pdata)
  return -EINVAL;

 prop_data = &pkt->data[1];

 pkt->shdr.hdr.size = sizeof(*pkt);
 pkt->shdr.hdr.pkt_type = HFI_CMD_SESSION_SET_PROPERTY;
 pkt->shdr.session_id = hash32_ptr(cookie);
 pkt->num_properties = 1;
 pkt->data[0] = ptype;






 switch (ptype) {
 case 129: {
  struct hfi_buffer_count_actual *in = pdata;
  struct hfi_buffer_count_actual_4xx *count = prop_data;

  count->count_actual = in->count_actual;
  count->type = in->type;
  count->count_min_host = in->count_actual;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*count);
  break;
 }
 case 128: {
  struct hfi_video_work_mode *in = pdata, *wm = prop_data;

  wm->video_work_mode = in->video_work_mode;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*wm);
  break;
 }
 case 131: {
  struct hfi_videocores_usage_type *in = pdata, *cu = prop_data;

  cu->video_core_enable_mask = in->video_core_enable_mask;
  pkt->shdr.hdr.size += sizeof(u32) + sizeof(*cu);
  break;
 }
 case 132:
 case 133:
 case 130:

  return -ENOTSUPP;
 default:
  return pkt_session_set_property_3xx(pkt, cookie, ptype, pdata);
 }

 return 0;
}
