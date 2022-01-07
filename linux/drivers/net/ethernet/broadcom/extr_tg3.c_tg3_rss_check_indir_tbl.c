
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int rxq_cnt; int* rss_ind_tbl; } ;


 int SUPPORT_MSIX ;
 int TG3_RSS_INDIR_TBL_SIZE ;
 int memset (int*,int ,int) ;
 int tg3_flag (struct tg3*,int ) ;
 int tg3_rss_init_dflt_indir_tbl (struct tg3*,int) ;

__attribute__((used)) static void tg3_rss_check_indir_tbl(struct tg3 *tp)
{
 int i;

 if (!tg3_flag(tp, SUPPORT_MSIX))
  return;

 if (tp->rxq_cnt == 1) {
  memset(&tp->rss_ind_tbl[0], 0, sizeof(tp->rss_ind_tbl));
  return;
 }


 for (i = 0; i < TG3_RSS_INDIR_TBL_SIZE; i++) {
  if (tp->rss_ind_tbl[i] >= tp->rxq_cnt)
   break;
 }

 if (i != TG3_RSS_INDIR_TBL_SIZE)
  tg3_rss_init_dflt_indir_tbl(tp, tp->rxq_cnt);
}
