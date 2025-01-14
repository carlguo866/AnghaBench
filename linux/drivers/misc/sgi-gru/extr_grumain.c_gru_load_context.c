
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_ctxnum; scalar_t__ ts_user_options; scalar_t__ ts_cch_req_slice; scalar_t__ ts_tlb_int_select; int ts_dsr_map; int ts_cbr_map; struct gru_state* ts_gru; int ts_data_valid; int ts_gdata; int ts_sizeavail; } ;
struct gru_state {int gs_gid; int gs_gru_base_vaddr; } ;
struct gru_context_configuration_handle {int tfm_fault_bit_enable; int tlb_int_enable; int req_slice_set_enable; scalar_t__ req_slice; int tfm_done_bit_enable; int unmap_enable; int cb_int_enable; int* asid; int * sizeavail; scalar_t__ tlb_int_select; int cbr_allocation_map; int dsr_allocation_map; } ;


 int BUG () ;
 scalar_t__ GRU_OPT_MISS_FMM_INTR ;
 scalar_t__ GRU_OPT_MISS_FMM_POLL ;
 int cch_allocate (struct gru_context_configuration_handle*) ;
 scalar_t__ cch_start (struct gru_context_configuration_handle*) ;
 struct gru_context_configuration_handle* get_cch (int ,int) ;
 scalar_t__ gru_cpu_fault_map_id () ;
 int gru_dbg (int ,char*,int,...) ;
 int gru_load_context_data (int ,int ,int,int ,int ,int ) ;
 int gru_load_mm_tracker (struct gru_state*,struct gru_thread_state*) ;
 int grudev ;
 scalar_t__ is_kernel_context (struct gru_thread_state*) ;
 int lock_cch_handle (struct gru_context_configuration_handle*) ;
 int unlock_cch_handle (struct gru_context_configuration_handle*) ;

void gru_load_context(struct gru_thread_state *gts)
{
 struct gru_state *gru = gts->ts_gru;
 struct gru_context_configuration_handle *cch;
 int i, err, asid, ctxnum = gts->ts_ctxnum;

 cch = get_cch(gru->gs_gru_base_vaddr, ctxnum);
 lock_cch_handle(cch);
 cch->tfm_fault_bit_enable =
     (gts->ts_user_options == GRU_OPT_MISS_FMM_POLL
      || gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
 cch->tlb_int_enable = (gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
 if (cch->tlb_int_enable) {
  gts->ts_tlb_int_select = gru_cpu_fault_map_id();
  cch->tlb_int_select = gts->ts_tlb_int_select;
 }
 if (gts->ts_cch_req_slice >= 0) {
  cch->req_slice_set_enable = 1;
  cch->req_slice = gts->ts_cch_req_slice;
 } else {
  cch->req_slice_set_enable =0;
 }
 cch->tfm_done_bit_enable = 0;
 cch->dsr_allocation_map = gts->ts_dsr_map;
 cch->cbr_allocation_map = gts->ts_cbr_map;

 if (is_kernel_context(gts)) {
  cch->unmap_enable = 1;
  cch->tfm_done_bit_enable = 1;
  cch->cb_int_enable = 1;
  cch->tlb_int_select = 0;
 } else {
  cch->unmap_enable = 0;
  cch->tfm_done_bit_enable = 0;
  cch->cb_int_enable = 0;
  asid = gru_load_mm_tracker(gru, gts);
  for (i = 0; i < 8; i++) {
   cch->asid[i] = asid + i;
   cch->sizeavail[i] = gts->ts_sizeavail;
  }
 }

 err = cch_allocate(cch);
 if (err) {
  gru_dbg(grudev,
   "err %d: cch %p, gts %p, cbr 0x%lx, dsr 0x%lx\n",
   err, cch, gts, gts->ts_cbr_map, gts->ts_dsr_map);
  BUG();
 }

 gru_load_context_data(gts->ts_gdata, gru->gs_gru_base_vaddr, ctxnum,
   gts->ts_cbr_map, gts->ts_dsr_map, gts->ts_data_valid);

 if (cch_start(cch))
  BUG();
 unlock_cch_handle(cch);

 gru_dbg(grudev, "gid %d, gts %p, cbrmap 0x%lx, dsrmap 0x%lx, tie %d, tis %d\n",
  gts->ts_gru->gs_gid, gts, gts->ts_cbr_map, gts->ts_dsr_map,
  (gts->ts_user_options == GRU_OPT_MISS_FMM_INTR), gts->ts_tlb_int_select);
}
