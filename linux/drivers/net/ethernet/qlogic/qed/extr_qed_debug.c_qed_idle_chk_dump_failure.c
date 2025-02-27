
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct dbg_idle_chk_info_reg {int size; int data; TYPE_1__ mode; } ;
struct dbg_idle_chk_cond_reg {int entry_size; scalar_t__ start_entry; int num_entries; } ;
union dbg_idle_chk_reg {struct dbg_idle_chk_info_reg info_reg; struct dbg_idle_chk_cond_reg cond_reg; } ;
typedef size_t u8 ;
typedef int u32 ;
typedef void* u16 ;
struct qed_ptt {int dummy; } ;
struct dbg_tools_data {int * block_in_reset; } ;
struct qed_hwfn {struct dbg_tools_data dbg_info; } ;
struct dbg_idle_chk_rule {size_t reg_offset; size_t num_cond_regs; size_t num_info_regs; int severity; } ;
struct dbg_idle_chk_result_reg_hdr {size_t num_dumped_cond_regs; scalar_t__ start_entry; int size; int data; int num_dumped_info_regs; int severity; void* mem_entry_id; void* rule_id; } ;
struct dbg_idle_chk_result_hdr {size_t num_dumped_cond_regs; scalar_t__ start_entry; int size; int data; int num_dumped_info_regs; int severity; void* mem_entry_id; void* rule_id; } ;
struct TYPE_4__ {scalar_t__ ptr; } ;


 size_t BIN_BUF_DBG_IDLE_CHK_REGS ;
 int DBG_IDLE_CHK_INFO_REG_ADDRESS ;
 int DBG_IDLE_CHK_INFO_REG_BLOCK_ID ;
 int DBG_IDLE_CHK_INFO_REG_WIDE_BUS ;
 int DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM ;
 int DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID ;
 int DBG_MODE_HDR_EVAL_MODE ;
 int DBG_MODE_HDR_MODES_BUF_OFFSET ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 void* GET_FIELD (int ,int ) ;
 scalar_t__ IDLE_CHK_RESULT_HDR_DWORDS ;
 int IDLE_CHK_RESULT_REG_HDR_DWORDS ;
 int MAX_BLOCK_ID ;
 int SET_FIELD (int ,int ,size_t) ;
 int SPLIT_TYPE_NONE ;
 int memset (struct dbg_idle_chk_result_reg_hdr*,int ,int) ;
 scalar_t__ qed_grc_dump_addr_range (struct qed_hwfn*,struct qed_ptt*,int*,int,int,int,int,int ,int ) ;
 int qed_is_mode_match (struct qed_hwfn*,void**) ;
 TYPE_2__* s_dbg_arrays ;

__attribute__((used)) static u32 qed_idle_chk_dump_failure(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u32 *
         dump_buf,
         bool dump,
         u16 rule_id,
         const struct dbg_idle_chk_rule *rule,
         u16 fail_entry_id, u32 *cond_reg_values)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
 const struct dbg_idle_chk_cond_reg *cond_regs;
 const struct dbg_idle_chk_info_reg *info_regs;
 u32 i, next_reg_offset = 0, offset = 0;
 struct dbg_idle_chk_result_hdr *hdr;
 const union dbg_idle_chk_reg *regs;
 u8 reg_id;

 hdr = (struct dbg_idle_chk_result_hdr *)dump_buf;
 regs = &((const union dbg_idle_chk_reg *)
   s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_REGS].ptr)[rule->reg_offset];
 cond_regs = &regs[0].cond_reg;
 info_regs = &regs[rule->num_cond_regs].info_reg;


 if (dump) {
  memset(hdr, 0, sizeof(*hdr));
  hdr->rule_id = rule_id;
  hdr->mem_entry_id = fail_entry_id;
  hdr->severity = rule->severity;
  hdr->num_dumped_cond_regs = rule->num_cond_regs;
 }

 offset += IDLE_CHK_RESULT_HDR_DWORDS;


 for (reg_id = 0; reg_id < rule->num_cond_regs; reg_id++) {
  const struct dbg_idle_chk_cond_reg *reg = &cond_regs[reg_id];
  struct dbg_idle_chk_result_reg_hdr *reg_hdr;

  reg_hdr = (struct dbg_idle_chk_result_reg_hdr *)
     (dump_buf + offset);


  if (!dump) {
   offset += IDLE_CHK_RESULT_REG_HDR_DWORDS +
       reg->entry_size;
   continue;
  }

  offset += IDLE_CHK_RESULT_REG_HDR_DWORDS;
  memset(reg_hdr, 0, sizeof(*reg_hdr));
  reg_hdr->start_entry = reg->start_entry;
  reg_hdr->size = reg->entry_size;
  SET_FIELD(reg_hdr->data,
     DBG_IDLE_CHK_RESULT_REG_HDR_IS_MEM,
     reg->num_entries > 1 || reg->start_entry > 0 ? 1 : 0);
  SET_FIELD(reg_hdr->data,
     DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID, reg_id);


  for (i = 0; i < reg_hdr->size; i++, next_reg_offset++, offset++)
   dump_buf[offset] = cond_reg_values[next_reg_offset];
 }


 for (reg_id = 0; reg_id < rule->num_info_regs; reg_id++) {
  const struct dbg_idle_chk_info_reg *reg = &info_regs[reg_id];
  u32 block_id;


  if (!dump) {
   offset += IDLE_CHK_RESULT_REG_HDR_DWORDS + reg->size;
   continue;
  }

  block_id = GET_FIELD(reg->data, DBG_IDLE_CHK_INFO_REG_BLOCK_ID);
  if (block_id >= MAX_BLOCK_ID) {
   DP_NOTICE(p_hwfn, "Invalid block_id\n");
   return 0;
  }

  if (!dev_data->block_in_reset[block_id]) {
   struct dbg_idle_chk_result_reg_hdr *reg_hdr;
   bool wide_bus, eval_mode, mode_match = 1;
   u16 modes_buf_offset;
   u32 addr;

   reg_hdr = (struct dbg_idle_chk_result_reg_hdr *)
      (dump_buf + offset);


   eval_mode = GET_FIELD(reg->mode.data,
           DBG_MODE_HDR_EVAL_MODE) > 0;
   if (eval_mode) {
    modes_buf_offset =
        GET_FIELD(reg->mode.data,
           DBG_MODE_HDR_MODES_BUF_OFFSET);
    mode_match =
     qed_is_mode_match(p_hwfn,
         &modes_buf_offset);
   }

   if (!mode_match)
    continue;

   addr = GET_FIELD(reg->data,
      DBG_IDLE_CHK_INFO_REG_ADDRESS);
   wide_bus = GET_FIELD(reg->data,
          DBG_IDLE_CHK_INFO_REG_WIDE_BUS);


   offset += IDLE_CHK_RESULT_REG_HDR_DWORDS;
   hdr->num_dumped_info_regs++;
   memset(reg_hdr, 0, sizeof(*reg_hdr));
   reg_hdr->size = reg->size;
   SET_FIELD(reg_hdr->data,
      DBG_IDLE_CHK_RESULT_REG_HDR_REG_ID,
      rule->num_cond_regs + reg_id);


   offset += qed_grc_dump_addr_range(p_hwfn,
         p_ptt,
         dump_buf + offset,
         dump,
         addr,
         reg->size, wide_bus,
         SPLIT_TYPE_NONE, 0);
  }
 }

 return offset;
}
