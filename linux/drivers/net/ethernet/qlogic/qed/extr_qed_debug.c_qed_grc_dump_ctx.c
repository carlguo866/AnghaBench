
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct storm_defs {int cm_task_st_ctx_rd_addr; int cm_task_st_ctx_lid_size; int cm_task_ag_ctx_rd_addr; int cm_task_ag_ctx_lid_size; int cm_conn_st_ctx_rd_addr; int cm_conn_st_ctx_lid_size; int cm_conn_ag_ctx_rd_addr; int cm_conn_ag_ctx_lid_size; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;
typedef enum dbg_grc_params { ____Placeholder_dbg_grc_params } dbg_grc_params ;


 int DBG_GRC_PARAM_NUM_LCIDS ;
 int DBG_GRC_PARAM_NUM_LTIDS ;
 size_t MAX_DBG_STORMS ;
 int qed_grc_dump_ctx_data (struct qed_hwfn*,struct qed_ptt*,int*,int,char*,int ,int ,int ,size_t) ;
 int qed_grc_get_param (struct qed_hwfn*,int) ;
 int qed_grc_is_storm_included (struct qed_hwfn*,int) ;
 struct storm_defs* s_storm_defs ;

__attribute__((used)) static u32 qed_grc_dump_ctx(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt, u32 *dump_buf, bool dump)
{
 enum dbg_grc_params grc_param;
 u32 offset = 0;
 u8 storm_id;

 for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
  struct storm_defs *storm = &s_storm_defs[storm_id];

  if (!qed_grc_is_storm_included(p_hwfn,
            (enum dbg_storms)storm_id))
   continue;


  grc_param = DBG_GRC_PARAM_NUM_LCIDS;
  offset +=
   qed_grc_dump_ctx_data(p_hwfn,
           p_ptt,
           dump_buf + offset,
           dump,
           "CONN_AG_CTX",
           qed_grc_get_param(p_hwfn,
        grc_param),
           storm->cm_conn_ag_ctx_lid_size,
           storm->cm_conn_ag_ctx_rd_addr,
           storm_id);


  grc_param = DBG_GRC_PARAM_NUM_LCIDS;
  offset +=
   qed_grc_dump_ctx_data(p_hwfn,
           p_ptt,
           dump_buf + offset,
           dump,
           "CONN_ST_CTX",
           qed_grc_get_param(p_hwfn,
        grc_param),
           storm->cm_conn_st_ctx_lid_size,
           storm->cm_conn_st_ctx_rd_addr,
           storm_id);


  grc_param = DBG_GRC_PARAM_NUM_LTIDS;
  offset +=
   qed_grc_dump_ctx_data(p_hwfn,
           p_ptt,
           dump_buf + offset,
           dump,
           "TASK_AG_CTX",
           qed_grc_get_param(p_hwfn,
        grc_param),
           storm->cm_task_ag_ctx_lid_size,
           storm->cm_task_ag_ctx_rd_addr,
           storm_id);


  grc_param = DBG_GRC_PARAM_NUM_LTIDS;
  offset +=
   qed_grc_dump_ctx_data(p_hwfn,
           p_ptt,
           dump_buf + offset,
           dump,
           "TASK_ST_CTX",
           qed_grc_get_param(p_hwfn,
        grc_param),
           storm->cm_task_st_ctx_lid_size,
           storm->cm_task_st_ctx_rd_addr,
           storm_id);
 }

 return offset;
}
