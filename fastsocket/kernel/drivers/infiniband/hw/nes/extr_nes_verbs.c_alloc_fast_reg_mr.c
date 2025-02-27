
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nes_pd {int pd_id; } ;
struct nes_hw_cqp_wqe {int * wqe_words; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_cqp_request {int waiting; scalar_t__ request_done; scalar_t__ major_code; int minor_code; int waitq; int refcount; struct nes_hw_cqp_wqe cqp_wqe; } ;
struct nes_adapter {scalar_t__ free_4kpbl; int pbl_lock; } ;


 int EIO ;
 int ENOMEM ;
 int ETIME ;
 int NES_CQP_ALLOCATE_STAG ;
 int NES_CQP_STAG_MR ;
 int NES_CQP_STAG_PBL_BLK_SIZE ;
 int NES_CQP_STAG_REM_ACC_EN ;
 int NES_CQP_STAG_VA_TO ;
 size_t NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX ;
 size_t NES_CQP_STAG_WQE_LEN_LOW_IDX ;
 int NES_CQP_STAG_WQE_PA_LOW_IDX ;
 size_t NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX ;
 size_t NES_CQP_STAG_WQE_PBL_LEN_IDX ;
 size_t NES_CQP_STAG_WQE_STAG_IDX ;
 int NES_CQP_STAG_WQE_VA_LOW_IDX ;
 size_t NES_CQP_WQE_OPCODE_IDX ;
 int NES_DBG_MR ;
 int NES_EVENT_TIMEOUT ;
 int PAGE_SIZE ;
 int atomic_set (int *,int) ;
 int barrier () ;
 int cpu_to_le32 (int) ;
 int nes_debug (int ,char*,...) ;
 int nes_fill_init_cqp_wqe (struct nes_hw_cqp_wqe*,struct nes_device*) ;
 int nes_free_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 struct nes_cqp_request* nes_get_cqp_request (struct nes_device*) ;
 int nes_post_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int nes_put_cqp_request (struct nes_device*,struct nes_cqp_request*) ;
 int set_wqe_32bit_value (int *,size_t,int) ;
 int set_wqe_64bit_value (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int alloc_fast_reg_mr(struct nes_device *nesdev, struct nes_pd *nespd,
        u32 stag, u32 page_count)
{
 struct nes_hw_cqp_wqe *cqp_wqe;
 struct nes_cqp_request *cqp_request;
 unsigned long flags;
 int ret;
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 u32 opcode = 0;
 u16 major_code;
 u64 region_length = page_count * PAGE_SIZE;


 cqp_request = nes_get_cqp_request(nesdev);
 if (cqp_request == ((void*)0)) {
  nes_debug(NES_DBG_MR, "Failed to get a cqp_request.\n");
  return -ENOMEM;
 }
 nes_debug(NES_DBG_MR, "alloc_fast_reg_mr: page_count = %d, "
         "region_length = %llu\n",
         page_count, region_length);
 cqp_request->waiting = 1;
 cqp_wqe = &cqp_request->cqp_wqe;

 spin_lock_irqsave(&nesadapter->pbl_lock, flags);
 if (nesadapter->free_4kpbl > 0) {
  nesadapter->free_4kpbl--;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
 } else {

  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
  nes_debug(NES_DBG_MR, "Out of Pbls\n");
  nes_free_cqp_request(nesdev, cqp_request);
  return -ENOMEM;
 }

 opcode = NES_CQP_ALLOCATE_STAG | NES_CQP_STAG_MR |
   NES_CQP_STAG_PBL_BLK_SIZE | NES_CQP_STAG_VA_TO |
   NES_CQP_STAG_REM_ACC_EN;
 nes_fill_init_cqp_wqe(cqp_wqe, nesdev);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_WQE_OPCODE_IDX, opcode);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_BLK_COUNT_IDX, 1);

 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] =
   cpu_to_le32((u32)(region_length >> 8) & 0xff000000);
 cqp_wqe->wqe_words[NES_CQP_STAG_WQE_LEN_HIGH_PD_IDX] |=
   cpu_to_le32(nespd->pd_id & 0x00007fff);

 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_STAG_IDX, stag);
 set_wqe_64bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_VA_LOW_IDX, 0);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_LEN_LOW_IDX, 0);
 set_wqe_64bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PA_LOW_IDX, 0);
 set_wqe_32bit_value(cqp_wqe->wqe_words, NES_CQP_STAG_WQE_PBL_LEN_IDX, (page_count * 8));
 cqp_wqe->wqe_words[NES_CQP_WQE_OPCODE_IDX] |= cpu_to_le32(NES_CQP_STAG_PBL_BLK_SIZE);
 barrier();

 atomic_set(&cqp_request->refcount, 2);
 nes_post_cqp_request(nesdev, cqp_request);


 ret = wait_event_timeout(cqp_request->waitq,
     (0 != cqp_request->request_done),
     NES_EVENT_TIMEOUT);

 nes_debug(NES_DBG_MR, "Allocate STag 0x%08X completed, "
    "wait_event_timeout ret = %u, CQP Major:Minor codes = "
    "0x%04X:0x%04X.\n", stag, ret, cqp_request->major_code,
    cqp_request->minor_code);
 major_code = cqp_request->major_code;
 nes_put_cqp_request(nesdev, cqp_request);

 if (!ret || major_code) {
  spin_lock_irqsave(&nesadapter->pbl_lock, flags);
  nesadapter->free_4kpbl++;
  spin_unlock_irqrestore(&nesadapter->pbl_lock, flags);
 }

 if (!ret)
  return -ETIME;
 else if (major_code)
  return -EIO;
 return 0;
}
