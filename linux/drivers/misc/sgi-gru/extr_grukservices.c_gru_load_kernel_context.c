
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_user_blade_id; int ts_ctxnum; struct gru_state* ts_gru; int ts_dsr_au_count; int ts_cbr_au_count; } ;
struct gru_state {void* gs_gru_base_vaddr; } ;
struct gru_blade_state {int bs_kgts_sema; int kernel_dsr; int kernel_cb; struct gru_thread_state* bs_kgts; scalar_t__ bs_async_dsr_bytes; scalar_t__ bs_async_cbrs; } ;


 int GRU_CB_COUNT_TO_AU (scalar_t__) ;
 int GRU_DS_BYTES_TO_AU (scalar_t__) ;
 int GRU_NUM_KERNEL_CBR ;
 int GRU_NUM_KERNEL_DSR_BYTES ;
 int IS_ERR (struct gru_thread_state*) ;
 int STAT (int ) ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 int get_gseg_base_address_cb (void*,int,int ) ;
 int get_gseg_base_address_ds (void*,int,int ) ;
 struct gru_thread_state* gru_alloc_gts (int *,int ,int ,int ,int ,int ) ;
 int gru_assign_gru_context (struct gru_thread_state*) ;
 int gru_load_context (struct gru_thread_state*) ;
 int gru_steal_context (struct gru_thread_state*) ;
 int load_kernel_context ;
 int msleep (int) ;
 int up_read (int *) ;
 int uv_blade_nr_possible_cpus (int) ;

__attribute__((used)) static void gru_load_kernel_context(struct gru_blade_state *bs, int blade_id)
{
 struct gru_state *gru;
 struct gru_thread_state *kgts;
 void *vaddr;
 int ctxnum, ncpus;

 up_read(&bs->bs_kgts_sema);
 down_write(&bs->bs_kgts_sema);

 if (!bs->bs_kgts) {
  do {
   bs->bs_kgts = gru_alloc_gts(((void*)0), 0, 0, 0, 0, 0);
   if (!IS_ERR(bs->bs_kgts))
    break;
   msleep(1);
  } while (1);
  bs->bs_kgts->ts_user_blade_id = blade_id;
 }
 kgts = bs->bs_kgts;

 if (!kgts->ts_gru) {
  STAT(load_kernel_context);
  ncpus = uv_blade_nr_possible_cpus(blade_id);
  kgts->ts_cbr_au_count = GRU_CB_COUNT_TO_AU(
   GRU_NUM_KERNEL_CBR * ncpus + bs->bs_async_cbrs);
  kgts->ts_dsr_au_count = GRU_DS_BYTES_TO_AU(
   GRU_NUM_KERNEL_DSR_BYTES * ncpus +
    bs->bs_async_dsr_bytes);
  while (!gru_assign_gru_context(kgts)) {
   msleep(1);
   gru_steal_context(kgts);
  }
  gru_load_context(kgts);
  gru = bs->bs_kgts->ts_gru;
  vaddr = gru->gs_gru_base_vaddr;
  ctxnum = kgts->ts_ctxnum;
  bs->kernel_cb = get_gseg_base_address_cb(vaddr, ctxnum, 0);
  bs->kernel_dsr = get_gseg_base_address_ds(vaddr, ctxnum, 0);
 }
 downgrade_write(&bs->bs_kgts_sema);
}
