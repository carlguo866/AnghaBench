
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int rss_size; } ;
struct TYPE_4__ {TYPE_1__ kinfo; } ;
struct hclge_vport {TYPE_2__ nic; int alloc_tqps; struct hclge_dev* back; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;
struct hclge_dev {int rx_buf_len; } ;


 int HCLGE_TQPS_RSS_INFO_LEN ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclge_get_vf_queue_info(struct hclge_vport *vport,
       struct hclge_mbx_vf_to_pf_cmd *mbx_req,
       bool gen_resp)
{

 u8 resp_data[6];
 struct hclge_dev *hdev = vport->back;


 memcpy(&resp_data[0], &vport->alloc_tqps, sizeof(u16));
 memcpy(&resp_data[2], &vport->nic.kinfo.rss_size, sizeof(u16));
 memcpy(&resp_data[4], &hdev->rx_buf_len, sizeof(u16));

 return hclge_gen_resp_to_vf(vport, mbx_req, 0, resp_data,
        6);
}
