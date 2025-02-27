
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubbub {int dummy; } ;
struct dcn_hubbub_wm_set {int wm_set; void* dram_clk_chanage; void* sr_exit; void* sr_enter; void* pte_meta_urgent; void* data_urgent; } ;
struct dcn_hubbub_wm {struct dcn_hubbub_wm_set* sets; } ;
struct dcn20_hubbub {int dummy; } ;


 int DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A ;
 int DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B ;
 int DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C ;
 int DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D ;
 int DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A ;
 int DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B ;
 int DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C ;
 int DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D ;
 int DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A ;
 int DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B ;
 int DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C ;
 int DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D ;
 int DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A ;
 int DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B ;
 int DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C ;
 int DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D ;
 int DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A ;
 int DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B ;
 int DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C ;
 int DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D ;
 scalar_t__ REG (int ) ;
 void* REG_READ (int ) ;
 struct dcn20_hubbub* TO_DCN20_HUBBUB (struct hubbub*) ;
 int memset (struct dcn_hubbub_wm*,int ,int) ;

void hubbub2_wm_read_state(struct hubbub *hubbub,
  struct dcn_hubbub_wm *wm)
{
 struct dcn20_hubbub *hubbub1 = TO_DCN20_HUBBUB(hubbub);

 struct dcn_hubbub_wm_set *s;

 memset(wm, 0, sizeof(struct dcn_hubbub_wm));

 s = &wm->sets[0];
 s->wm_set = 0;
 s->data_urgent = REG_READ(DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A);
 if (REG(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A))
  s->pte_meta_urgent = REG_READ(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A);
 if (REG(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A)) {
  s->sr_enter = REG_READ(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A);
  s->sr_exit = REG_READ(DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A);
 }
 s->dram_clk_chanage = REG_READ(DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A);

 s = &wm->sets[1];
 s->wm_set = 1;
 s->data_urgent = REG_READ(DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B);
 if (REG(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B))
  s->pte_meta_urgent = REG_READ(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B);
 if (REG(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B)) {
  s->sr_enter = REG_READ(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B);
  s->sr_exit = REG_READ(DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B);
 }
 s->dram_clk_chanage = REG_READ(DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B);

 s = &wm->sets[2];
 s->wm_set = 2;
 s->data_urgent = REG_READ(DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C);
 if (REG(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C))
  s->pte_meta_urgent = REG_READ(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C);
 if (REG(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C)) {
  s->sr_enter = REG_READ(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C);
  s->sr_exit = REG_READ(DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C);
 }
 s->dram_clk_chanage = REG_READ(DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C);

 s = &wm->sets[3];
 s->wm_set = 3;
 s->data_urgent = REG_READ(DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D);
 if (REG(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D))
  s->pte_meta_urgent = REG_READ(DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D);
 if (REG(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D)) {
  s->sr_enter = REG_READ(DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D);
  s->sr_exit = REG_READ(DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D);
 }
 s->dram_clk_chanage = REG_READ(DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D);
}
