
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_command {int flags; int* resp; int opcode; int error; } ;
struct cb710_slot {int dummy; } ;


 int CB710_MMC_RESPONSE0_PORT ;
 int CB710_MMC_RESPONSE1_PORT ;
 int CB710_MMC_RESPONSE2_PORT ;
 int CB710_MMC_RESPONSE3_PORT ;
 int EILSEQ ;
 int MMC_RSP_136 ;
 int MMC_RSP_OPCODE ;
 int cb710_read_port_32 (struct cb710_slot*,int ) ;

__attribute__((used)) static void cb710_receive_response(struct cb710_slot *slot,
 struct mmc_command *cmd)
{
 unsigned rsp_opcode, wanted_opcode;


 if (cmd->flags & MMC_RSP_136) {
  u32 resp[4];

  resp[0] = cb710_read_port_32(slot, CB710_MMC_RESPONSE3_PORT);
  resp[1] = cb710_read_port_32(slot, CB710_MMC_RESPONSE2_PORT);
  resp[2] = cb710_read_port_32(slot, CB710_MMC_RESPONSE1_PORT);
  resp[3] = cb710_read_port_32(slot, CB710_MMC_RESPONSE0_PORT);
  rsp_opcode = resp[0] >> 24;

  cmd->resp[0] = (resp[0] << 8)|(resp[1] >> 24);
  cmd->resp[1] = (resp[1] << 8)|(resp[2] >> 24);
  cmd->resp[2] = (resp[2] << 8)|(resp[3] >> 24);
  cmd->resp[3] = (resp[3] << 8);
 } else {
  rsp_opcode = cb710_read_port_32(slot, CB710_MMC_RESPONSE1_PORT) & 0x3F;
  cmd->resp[0] = cb710_read_port_32(slot, CB710_MMC_RESPONSE0_PORT);
 }

 wanted_opcode = (cmd->flags & MMC_RSP_OPCODE) ? cmd->opcode : 0x3F;
 if (rsp_opcode != wanted_opcode)
  cmd->error = -EILSEQ;
}
