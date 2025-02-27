
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hfi_profile_level {int level; int profile; } ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct hfi_msg_session_property_info_pkt {int * data; TYPE_2__ shdr; } ;


 unsigned int HFI_ERR_NONE ;
 unsigned int HFI_ERR_SESSION_INVALID_PARAMETER ;

__attribute__((used)) static unsigned int
session_get_prop_profile_level(struct hfi_msg_session_property_info_pkt *pkt,
          struct hfi_profile_level *profile_level)
{
 struct hfi_profile_level *hfi;
 u32 req_bytes;

 req_bytes = pkt->shdr.hdr.size - sizeof(*pkt);

 if (!req_bytes || req_bytes % sizeof(struct hfi_profile_level))

  return HFI_ERR_SESSION_INVALID_PARAMETER;

 hfi = (struct hfi_profile_level *)&pkt->data[1];
 profile_level->profile = hfi->profile;
 profile_level->level = hfi->level;

 return HFI_ERR_NONE;
}
