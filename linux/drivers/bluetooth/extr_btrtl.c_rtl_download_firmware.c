
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct rtl_download_response {int dummy; } ;
struct rtl_download_cmd {int index; int data; } ;
struct hci_rp_read_local_version {int lmp_subver; int hci_rev; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,int,int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 int RTL_FRAG_LEN ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,struct rtl_download_cmd*,int ) ;
 int __le16_to_cpu (int ) ;
 struct sk_buff* btrtl_read_local_version (struct hci_dev*) ;
 int kfree (struct rtl_download_cmd*) ;
 int kfree_skb (struct sk_buff*) ;
 struct rtl_download_cmd* kmalloc (int,int ) ;
 int memcpy (int ,unsigned char const*,int) ;
 int rtl_dev_err (struct hci_dev*,char*,...) ;
 int rtl_dev_info (struct hci_dev*,char*,int ,int ) ;

__attribute__((used)) static int rtl_download_firmware(struct hci_dev *hdev,
     const unsigned char *data, int fw_len)
{
 struct rtl_download_cmd *dl_cmd;
 int frag_num = fw_len / RTL_FRAG_LEN + 1;
 int frag_len = RTL_FRAG_LEN;
 int ret = 0;
 int i;
 struct sk_buff *skb;
 struct hci_rp_read_local_version *rp;

 dl_cmd = kmalloc(sizeof(struct rtl_download_cmd), GFP_KERNEL);
 if (!dl_cmd)
  return -ENOMEM;

 for (i = 0; i < frag_num; i++) {
  struct sk_buff *skb;

  BT_DBG("download fw (%d/%d)", i, frag_num);

  if (i > 0x7f)
   dl_cmd->index = (i & 0x7f) + 1;
  else
   dl_cmd->index = i;

  if (i == (frag_num - 1)) {
   dl_cmd->index |= 0x80;
   frag_len = fw_len % RTL_FRAG_LEN;
  }
  memcpy(dl_cmd->data, data, frag_len);


  skb = __hci_cmd_sync(hdev, 0xfc20, frag_len + 1, dl_cmd,
         HCI_INIT_TIMEOUT);
  if (IS_ERR(skb)) {
   rtl_dev_err(hdev, "download fw command failed (%ld)",
        PTR_ERR(skb));
   ret = -PTR_ERR(skb);
   goto out;
  }

  if (skb->len != sizeof(struct rtl_download_response)) {
   rtl_dev_err(hdev, "download fw event length mismatch");
   kfree_skb(skb);
   ret = -EIO;
   goto out;
  }

  kfree_skb(skb);
  data += RTL_FRAG_LEN;
 }

 skb = btrtl_read_local_version(hdev);
 if (IS_ERR(skb)) {
  ret = PTR_ERR(skb);
  rtl_dev_err(hdev, "read local version failed");
  goto out;
 }

 rp = (struct hci_rp_read_local_version *)skb->data;
 rtl_dev_info(hdev, "fw version 0x%04x%04x",
       __le16_to_cpu(rp->hci_rev), __le16_to_cpu(rp->lmp_subver));
 kfree_skb(skb);

out:
 kfree(dl_cmd);
 return ret;
}
