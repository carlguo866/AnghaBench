
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_3__ {int mac_addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclgevf_dev {TYPE_2__ hw; } ;


 int ether_addr_copy (int *,int ) ;
 struct hclgevf_dev* hclgevf_ae_get_hdev (struct hnae3_handle*) ;

__attribute__((used)) static void hclgevf_get_mac_addr(struct hnae3_handle *handle, u8 *p)
{
 struct hclgevf_dev *hdev = hclgevf_ae_get_hdev(handle);

 ether_addr_copy(p, hdev->hw.mac.mac_addr);
}
