
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_13__ {int oldcommand; } ;
struct TYPE_11__ {int size_header; } ;
struct TYPE_12__ {TYPE_1__ header_desc; } ;
struct TYPE_16__ {TYPE_3__ command; TYPE_2__ header; } ;
struct TYPE_15__ {int * state; int posted_request_count; int host; TYPE_6__** command_packet_virt; } ;
struct TYPE_14__ {int request_id; int features; int result; void* fw_build; void* fw_branch; void* fw_arch_id; void* fw_srl; int size; void* message_credits; int opcode__reserved; } ;
typedef TYPE_4__ TW_Initconnect ;
typedef TYPE_5__ TW_Device_Extension ;
typedef TYPE_6__ TW_Command_Full ;


 int TW_DRIVER ;
 int TW_EXTENDED_INIT_CONNECT ;
 int TW_INIT_COMMAND_PACKET_SIZE ;
 int TW_INIT_COMMAND_PACKET_SIZE_EXTENDED ;
 int TW_OPRES_IN (int ,int ) ;
 int TW_OP_INIT_CONNECTION ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_S_INITIAL ;
 void* cpu_to_le16 (unsigned short) ;
 int cpu_to_le32 (int) ;
 unsigned short le16_to_cpu (void*) ;
 int le32_to_cpu (int ) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ twl_poll_response (TYPE_5__*,int,int) ;
 int twl_post_command_packet (TYPE_5__*,int) ;

__attribute__((used)) static int twl_initconnection(TW_Device_Extension *tw_dev, int message_credits,
          u32 set_features, unsigned short current_fw_srl,
         unsigned short current_fw_arch_id,
         unsigned short current_fw_branch,
         unsigned short current_fw_build,
         unsigned short *fw_on_ctlr_srl,
         unsigned short *fw_on_ctlr_arch_id,
         unsigned short *fw_on_ctlr_branch,
         unsigned short *fw_on_ctlr_build,
         u32 *init_connect_result)
{
 TW_Command_Full *full_command_packet;
 TW_Initconnect *tw_initconnect;
 int request_id = 0, retval = 1;


 full_command_packet = tw_dev->command_packet_virt[request_id];
 memset(full_command_packet, 0, sizeof(TW_Command_Full));
 full_command_packet->header.header_desc.size_header = 128;

 tw_initconnect = (TW_Initconnect *)&full_command_packet->command.oldcommand;
 tw_initconnect->opcode__reserved = TW_OPRES_IN(0, TW_OP_INIT_CONNECTION);
 tw_initconnect->request_id = request_id;
 tw_initconnect->message_credits = cpu_to_le16(message_credits);
 tw_initconnect->features = set_features;


 tw_initconnect->features |= sizeof(dma_addr_t) > 4 ? 1 : 0;

 tw_initconnect->features = cpu_to_le32(tw_initconnect->features);

 if (set_features & TW_EXTENDED_INIT_CONNECT) {
  tw_initconnect->size = TW_INIT_COMMAND_PACKET_SIZE_EXTENDED;
  tw_initconnect->fw_srl = cpu_to_le16(current_fw_srl);
  tw_initconnect->fw_arch_id = cpu_to_le16(current_fw_arch_id);
  tw_initconnect->fw_branch = cpu_to_le16(current_fw_branch);
  tw_initconnect->fw_build = cpu_to_le16(current_fw_build);
 } else
  tw_initconnect->size = TW_INIT_COMMAND_PACKET_SIZE;


 twl_post_command_packet(tw_dev, request_id);


 if (twl_poll_response(tw_dev, request_id, 30)) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0x8, "No valid response during init connection");
 } else {
  if (set_features & TW_EXTENDED_INIT_CONNECT) {
   *fw_on_ctlr_srl = le16_to_cpu(tw_initconnect->fw_srl);
   *fw_on_ctlr_arch_id = le16_to_cpu(tw_initconnect->fw_arch_id);
   *fw_on_ctlr_branch = le16_to_cpu(tw_initconnect->fw_branch);
   *fw_on_ctlr_build = le16_to_cpu(tw_initconnect->fw_build);
   *init_connect_result = le32_to_cpu(tw_initconnect->result);
  }
  retval = 0;
 }

 tw_dev->posted_request_count--;
 tw_dev->state[request_id] = TW_S_INITIAL;

 return retval;
}
