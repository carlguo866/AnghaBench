
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qed_dev {int dummy; } ;
struct qed_chain_ext_pbl {int dummy; } ;
struct qed_chain {int dummy; } ;
typedef enum qed_chain_use_mode { ____Placeholder_qed_chain_use_mode } qed_chain_use_mode ;
typedef enum qed_chain_mode { ____Placeholder_qed_chain_mode } qed_chain_mode ;
typedef enum qed_chain_cnt_type { ____Placeholder_qed_chain_cnt_type } qed_chain_cnt_type ;


 int DP_NOTICE (struct qed_dev*,char*,...) ;



 int QED_CHAIN_PAGE_CNT (int,size_t,int) ;
 int qed_chain_alloc_next_ptr (struct qed_dev*,struct qed_chain*) ;
 int qed_chain_alloc_pbl (struct qed_dev*,struct qed_chain*,struct qed_chain_ext_pbl*) ;
 int qed_chain_alloc_sanity_check (struct qed_dev*,int,size_t,int) ;
 int qed_chain_alloc_single (struct qed_dev*,struct qed_chain*) ;
 int qed_chain_free (struct qed_dev*,struct qed_chain*) ;
 int qed_chain_init_params (struct qed_chain*,int,int ,int,int,int) ;

int qed_chain_alloc(struct qed_dev *cdev,
      enum qed_chain_use_mode intended_use,
      enum qed_chain_mode mode,
      enum qed_chain_cnt_type cnt_type,
      u32 num_elems,
      size_t elem_size,
      struct qed_chain *p_chain,
      struct qed_chain_ext_pbl *ext_pbl)
{
 u32 page_cnt;
 int rc = 0;

 if (mode == 128)
  page_cnt = 1;
 else
  page_cnt = QED_CHAIN_PAGE_CNT(num_elems, elem_size, mode);

 rc = qed_chain_alloc_sanity_check(cdev, cnt_type, elem_size, page_cnt);
 if (rc) {
  DP_NOTICE(cdev,
     "Cannot allocate a chain with the given arguments:\n");
  DP_NOTICE(cdev,
     "[use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu]\n",
     intended_use, mode, cnt_type, num_elems, elem_size);
  return rc;
 }

 qed_chain_init_params(p_chain, page_cnt, (u8) elem_size, intended_use,
         mode, cnt_type);

 switch (mode) {
 case 130:
  rc = qed_chain_alloc_next_ptr(cdev, p_chain);
  break;
 case 128:
  rc = qed_chain_alloc_single(cdev, p_chain);
  break;
 case 129:
  rc = qed_chain_alloc_pbl(cdev, p_chain, ext_pbl);
  break;
 }
 if (rc)
  goto nomem;

 return 0;

nomem:
 qed_chain_free(cdev, p_chain);
 return rc;
}
