
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_dev {int rss_size_max; } ;


 struct hclge_vport* hclge_get_vport (struct hnae3_handle*) ;

__attribute__((used)) static int hclge_get_tc_size(struct hnae3_handle *handle)
{
 struct hclge_vport *vport = hclge_get_vport(handle);
 struct hclge_dev *hdev = vport->back;

 return hdev->rss_size_max;
}
