
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct hclge_vport {int dwrr; scalar_t__ qs_offset; } ;
struct hclge_pg_info {int * tc_dwrr; } ;
struct TYPE_4__ {size_t num_tc; TYPE_1__* tc_info; struct hclge_pg_info* pg_info; } ;
struct hclge_dev {size_t num_alloc_vport; TYPE_2__ tm_info; struct hclge_vport* vport; } ;
struct TYPE_3__ {size_t pgid; } ;


 int hclge_tm_pri_weight_cfg (struct hclge_dev*,size_t,int ) ;
 int hclge_tm_qs_weight_cfg (struct hclge_dev*,scalar_t__,int ) ;

__attribute__((used)) static int hclge_tm_pri_tc_base_dwrr_cfg(struct hclge_dev *hdev)
{
 struct hclge_vport *vport = hdev->vport;
 struct hclge_pg_info *pg_info;
 u8 dwrr;
 int ret;
 u32 i, k;

 for (i = 0; i < hdev->tm_info.num_tc; i++) {
  pg_info =
   &hdev->tm_info.pg_info[hdev->tm_info.tc_info[i].pgid];
  dwrr = pg_info->tc_dwrr[i];

  ret = hclge_tm_pri_weight_cfg(hdev, i, dwrr);
  if (ret)
   return ret;

  for (k = 0; k < hdev->num_alloc_vport; k++) {
   ret = hclge_tm_qs_weight_cfg(
    hdev, vport[k].qs_offset + i,
    vport[k].dwrr);
   if (ret)
    return ret;
  }
 }

 return 0;
}
