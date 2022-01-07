
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qca_data {int tx_idle_delay; int wake_retrans; int vote_off_ms; int vote_on_ms; int votes_off; int votes_on; int rx_votes_off; int rx_votes_on; int rx_vote; int tx_votes_off; int tx_votes_on; int tx_vote; int ibs_recv_wacks; int ibs_recv_wakes; int ibs_recv_slps; int ibs_sent_wacks; int ibs_sent_wakes; int ibs_sent_slps; int rx_ibs_state; int tx_ibs_state; } ;
struct hci_uart {struct qca_data* priv; } ;
struct hci_dev {int debugfs; } ;
struct dentry {int dummy; } ;


 int S_IRUGO ;
 int S_IWUSR ;
 int debugfs_create_bool (char*,int,struct dentry*,int *) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int debugfs_create_u64 (char*,int,struct dentry*,int *) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;

__attribute__((used)) static void qca_debugfs_init(struct hci_dev *hdev)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);
 struct qca_data *qca = hu->priv;
 struct dentry *ibs_dir;
 umode_t mode;

 if (!hdev->debugfs)
  return;

 ibs_dir = debugfs_create_dir("ibs", hdev->debugfs);


 mode = S_IRUGO;
 debugfs_create_u8("tx_ibs_state", mode, ibs_dir, &qca->tx_ibs_state);
 debugfs_create_u8("rx_ibs_state", mode, ibs_dir, &qca->rx_ibs_state);
 debugfs_create_u64("ibs_sent_sleeps", mode, ibs_dir,
      &qca->ibs_sent_slps);
 debugfs_create_u64("ibs_sent_wakes", mode, ibs_dir,
      &qca->ibs_sent_wakes);
 debugfs_create_u64("ibs_sent_wake_acks", mode, ibs_dir,
      &qca->ibs_sent_wacks);
 debugfs_create_u64("ibs_recv_sleeps", mode, ibs_dir,
      &qca->ibs_recv_slps);
 debugfs_create_u64("ibs_recv_wakes", mode, ibs_dir,
      &qca->ibs_recv_wakes);
 debugfs_create_u64("ibs_recv_wake_acks", mode, ibs_dir,
      &qca->ibs_recv_wacks);
 debugfs_create_bool("tx_vote", mode, ibs_dir, &qca->tx_vote);
 debugfs_create_u64("tx_votes_on", mode, ibs_dir, &qca->tx_votes_on);
 debugfs_create_u64("tx_votes_off", mode, ibs_dir, &qca->tx_votes_off);
 debugfs_create_bool("rx_vote", mode, ibs_dir, &qca->rx_vote);
 debugfs_create_u64("rx_votes_on", mode, ibs_dir, &qca->rx_votes_on);
 debugfs_create_u64("rx_votes_off", mode, ibs_dir, &qca->rx_votes_off);
 debugfs_create_u64("votes_on", mode, ibs_dir, &qca->votes_on);
 debugfs_create_u64("votes_off", mode, ibs_dir, &qca->votes_off);
 debugfs_create_u32("vote_on_ms", mode, ibs_dir, &qca->vote_on_ms);
 debugfs_create_u32("vote_off_ms", mode, ibs_dir, &qca->vote_off_ms);


 mode = S_IRUGO | S_IWUSR;
 debugfs_create_u32("wake_retrans", mode, ibs_dir, &qca->wake_retrans);
 debugfs_create_u32("tx_idle_delay", mode, ibs_dir,
      &qca->tx_idle_delay);
}
