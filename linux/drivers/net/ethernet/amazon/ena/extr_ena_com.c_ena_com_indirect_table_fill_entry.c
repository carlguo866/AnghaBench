
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_rss {int tbl_log_size; int* host_rss_ind_tbl; } ;
struct ena_com_dev {struct ena_rss rss; } ;


 int EINVAL ;
 int ENA_TOTAL_NUM_QUEUES ;
 scalar_t__ unlikely (int) ;

int ena_com_indirect_table_fill_entry(struct ena_com_dev *ena_dev,
          u16 entry_idx, u16 entry_value)
{
 struct ena_rss *rss = &ena_dev->rss;

 if (unlikely(entry_idx >= (1 << rss->tbl_log_size)))
  return -EINVAL;

 if (unlikely((entry_value > ENA_TOTAL_NUM_QUEUES)))
  return -EINVAL;

 rss->host_rss_ind_tbl[entry_idx] = entry_value;

 return 0;
}
