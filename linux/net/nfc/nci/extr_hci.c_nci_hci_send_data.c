
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; } ;
struct nci_dev {TYPE_1__* hci_dev; } ;
struct nci_conn_info {int max_pkt_payload_len; int conn_id; } ;
struct TYPE_2__ {struct nci_conn_info* conn_info; } ;


 int ENOMEM ;
 int EPROTO ;
 int GFP_KERNEL ;
 scalar_t__ NCI_DATA_HDR_SIZE ;
 int NCI_HFP_NO_CHAINING ;
 int nci_send_data (struct nci_dev*,int ,struct sk_buff*) ;
 struct sk_buff* nci_skb_alloc (struct nci_dev*,scalar_t__,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int nci_hci_send_data(struct nci_dev *ndev, u8 pipe,
        const u8 data_type, const u8 *data,
        size_t data_len)
{
 struct nci_conn_info *conn_info;
 struct sk_buff *skb;
 int len, i, r;
 u8 cb = pipe;

 conn_info = ndev->hci_dev->conn_info;
 if (!conn_info)
  return -EPROTO;

 i = 0;
 skb = nci_skb_alloc(ndev, conn_info->max_pkt_payload_len +
       NCI_DATA_HDR_SIZE, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, NCI_DATA_HDR_SIZE + 2);
 *(u8 *)skb_push(skb, 1) = data_type;

 do {
  len = conn_info->max_pkt_payload_len;


  if (i + conn_info->max_pkt_payload_len -
      (skb->len + 1) >= data_len) {
   cb |= NCI_HFP_NO_CHAINING;
   len = data_len - i;
  } else {
   len = conn_info->max_pkt_payload_len - skb->len - 1;
  }

  *(u8 *)skb_push(skb, 1) = cb;

  if (len > 0)
   skb_put_data(skb, data + i, len);

  r = nci_send_data(ndev, conn_info->conn_id, skb);
  if (r < 0)
   return r;

  i += len;

  if (i < data_len) {
   skb = nci_skb_alloc(ndev,
         conn_info->max_pkt_payload_len +
         NCI_DATA_HDR_SIZE, GFP_KERNEL);
   if (!skb)
    return -ENOMEM;

   skb_reserve(skb, NCI_DATA_HDR_SIZE + 1);
  }
 } while (i < data_len);

 return i;
}
