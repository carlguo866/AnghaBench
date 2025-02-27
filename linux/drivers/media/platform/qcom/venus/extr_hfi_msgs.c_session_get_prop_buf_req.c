
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct hfi_msg_session_property_info_pkt {int * data; TYPE_2__ shdr; } ;
struct hfi_buffer_requirements {int dummy; } ;


 unsigned int HFI_BUFFER_TYPE_MAX ;
 unsigned int HFI_ERR_NONE ;
 unsigned int HFI_ERR_SESSION_INVALID_PARAMETER ;
 int memcpy (struct hfi_buffer_requirements*,struct hfi_buffer_requirements*,int) ;

__attribute__((used)) static unsigned int
session_get_prop_buf_req(struct hfi_msg_session_property_info_pkt *pkt,
    struct hfi_buffer_requirements *bufreq)
{
 struct hfi_buffer_requirements *buf_req;
 u32 req_bytes;
 unsigned int idx = 0;

 req_bytes = pkt->shdr.hdr.size - sizeof(*pkt);

 if (!req_bytes || req_bytes % sizeof(*buf_req) || !pkt->data[1])

  return HFI_ERR_SESSION_INVALID_PARAMETER;

 buf_req = (struct hfi_buffer_requirements *)&pkt->data[1];
 if (!buf_req)
  return HFI_ERR_SESSION_INVALID_PARAMETER;

 while (req_bytes) {
  memcpy(&bufreq[idx], buf_req, sizeof(*bufreq));
  idx++;

  if (idx > HFI_BUFFER_TYPE_MAX)
   return HFI_ERR_SESSION_INVALID_PARAMETER;

  req_bytes -= sizeof(struct hfi_buffer_requirements);
  buf_req++;
 }

 return HFI_ERR_NONE;
}
