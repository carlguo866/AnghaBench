
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct dbg_idle_chk_rule {int dummy; } ;
struct TYPE_3__ {int data; } ;
struct dbg_idle_chk_cond_hdr {int data_size; TYPE_1__ mode; } ;
struct TYPE_4__ {int size_in_dwords; int * ptr; } ;


 size_t BIN_BUF_DBG_IDLE_CHK_RULES ;
 int DBG_MODE_HDR_EVAL_MODE ;
 int DBG_MODE_HDR_MODES_BUF_OFFSET ;
 scalar_t__ GET_FIELD (int ,int ) ;
 int IDLE_CHK_RULE_SIZE_DWORDS ;
 int ecore_dump_common_global_params (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ;
 int ecore_dump_last_section (int*,int,int) ;
 int ecore_dump_num_param (int*,int,char*,int) ;
 int ecore_dump_section_hdr (int*,int,char*,int) ;
 int ecore_dump_str_param (int*,int,char*,char*) ;
 int ecore_idle_chk_dump_rule_entries (struct ecore_hwfn*,struct ecore_ptt*,int*,int,struct dbg_idle_chk_rule const*,int,int*) ;
 int ecore_is_mode_match (struct ecore_hwfn*,scalar_t__*) ;
 TYPE_2__* s_dbg_arrays ;

__attribute__((used)) static u32 ecore_idle_chk_dump(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 *dump_buf,
          bool dump)
{
 u32 num_failing_rules_offset, offset = 0, input_offset = 0, num_failing_rules = 0;


 offset += ecore_dump_common_global_params(p_hwfn, p_ptt, dump_buf + offset, dump, 1);
 offset += ecore_dump_str_param(dump_buf + offset, dump, "dump-type", "idle-chk");


 offset += ecore_dump_section_hdr(dump_buf + offset, dump, "idle_chk", 1);
 num_failing_rules_offset = offset;
 offset += ecore_dump_num_param(dump_buf + offset, dump, "num_rules", 0);

 while (input_offset < s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].size_in_dwords) {
  const struct dbg_idle_chk_cond_hdr *cond_hdr = (const struct dbg_idle_chk_cond_hdr *)&s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].ptr[input_offset++];
  bool eval_mode, mode_match = 1;
  u32 curr_failing_rules;
  u16 modes_buf_offset;


  eval_mode = GET_FIELD(cond_hdr->mode.data, DBG_MODE_HDR_EVAL_MODE) > 0;
  if (eval_mode) {
   modes_buf_offset = GET_FIELD(cond_hdr->mode.data, DBG_MODE_HDR_MODES_BUF_OFFSET);
   mode_match = ecore_is_mode_match(p_hwfn, &modes_buf_offset);
  }

  if (mode_match) {
   offset += ecore_idle_chk_dump_rule_entries(p_hwfn, p_ptt, dump_buf + offset, dump, (const struct dbg_idle_chk_rule *)&s_dbg_arrays[BIN_BUF_DBG_IDLE_CHK_RULES].ptr[input_offset], cond_hdr->data_size / IDLE_CHK_RULE_SIZE_DWORDS, &curr_failing_rules);
   num_failing_rules += curr_failing_rules;
  }

  input_offset += cond_hdr->data_size;
 }


 if (dump)
  ecore_dump_num_param(dump_buf + num_failing_rules_offset, dump, "num_rules", num_failing_rules);


 offset += ecore_dump_last_section(dump_buf, offset, dump);

 return offset;
}
