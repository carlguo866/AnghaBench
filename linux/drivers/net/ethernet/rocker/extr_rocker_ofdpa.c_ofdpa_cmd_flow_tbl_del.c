
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_port {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct ofdpa_flow_tbl_entry {int cookie; int cmd; } ;


 int EMSGSIZE ;
 int ROCKER_TLV_CMD_INFO ;
 int ROCKER_TLV_CMD_TYPE ;
 int ROCKER_TLV_OF_DPA_COOKIE ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u64 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int ofdpa_cmd_flow_tbl_del(const struct rocker_port *rocker_port,
      struct rocker_desc_info *desc_info,
      void *priv)
{
 const struct ofdpa_flow_tbl_entry *entry = priv;
 struct rocker_tlv *cmd_info;

 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_CMD_TYPE, entry->cmd))
  return -EMSGSIZE;
 cmd_info = rocker_tlv_nest_start(desc_info, ROCKER_TLV_CMD_INFO);
 if (!cmd_info)
  return -EMSGSIZE;
 if (rocker_tlv_put_u64(desc_info, ROCKER_TLV_OF_DPA_COOKIE,
          entry->cookie))
  return -EMSGSIZE;
 rocker_tlv_nest_end(desc_info, cmd_info);

 return 0;
}
