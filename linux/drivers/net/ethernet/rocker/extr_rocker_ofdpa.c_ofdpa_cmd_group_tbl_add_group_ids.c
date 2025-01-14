
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct ofdpa_group_tbl_entry {int group_count; int * group_ids; } ;


 int EMSGSIZE ;
 int ROCKER_TLV_OF_DPA_GROUP_COUNT ;
 int ROCKER_TLV_OF_DPA_GROUP_IDS ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int,int ) ;

__attribute__((used)) static int
ofdpa_cmd_group_tbl_add_group_ids(struct rocker_desc_info *desc_info,
      const struct ofdpa_group_tbl_entry *entry)
{
 int i;
 struct rocker_tlv *group_ids;

 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_OF_DPA_GROUP_COUNT,
          entry->group_count))
  return -EMSGSIZE;

 group_ids = rocker_tlv_nest_start(desc_info,
       ROCKER_TLV_OF_DPA_GROUP_IDS);
 if (!group_ids)
  return -EMSGSIZE;

 for (i = 0; i < entry->group_count; i++)

  if (rocker_tlv_put_u32(desc_info, i + 1, entry->group_ids[i]))
   return -EMSGSIZE;

 rocker_tlv_nest_end(desc_info, group_ids);

 return 0;
}
