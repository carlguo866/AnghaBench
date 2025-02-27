
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {unsigned short ldev_num; } ;
struct TYPE_10__ {int ioctl_opcode; TYPE_4__ ldev; } ;
struct TYPE_7__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_8__ {TYPE_2__ control; int id; int opcode; } ;
union myrs_cmd_mbox {TYPE_5__ ldev_info; TYPE_3__ common; } ;
struct scsi_device {scalar_t__ channel; struct myrs_ldev_info* hostdata; int host; } ;
struct myrs_ldev_info {unsigned short ldev_num; scalar_t__ rbld_active; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {int dcmd_mutex; struct myrs_cmdblk dcmd_blk; TYPE_1__* ctlr_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {scalar_t__ physchan_present; } ;


 int EALREADY ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int KERN_INFO ;
 int MYRS_CMD_OP_IOCTL ;
 int MYRS_DCMD_TAG ;
 int MYRS_IOCTL_RBLD_DEVICE_START ;
 int MYRS_IOCTL_RBLD_DEVICE_STOP ;
 unsigned char MYRS_STATUS_SUCCESS ;
 int kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 unsigned char myrs_get_ldev_info (struct myrs_hba*,unsigned short,struct myrs_ldev_info*) ;
 int myrs_reset_cmd (struct myrs_cmdblk*) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;
 struct myrs_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t rebuild_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);
 struct myrs_ldev_info *ldev_info;
 struct myrs_cmdblk *cmd_blk;
 union myrs_cmd_mbox *mbox;
 unsigned short ldev_num;
 unsigned char status;
 int rebuild, ret;

 if (sdev->channel < cs->ctlr_info->physchan_present)
  return -EINVAL;

 ldev_info = sdev->hostdata;
 if (!ldev_info)
  return -ENXIO;
 ldev_num = ldev_info->ldev_num;

 ret = kstrtoint(buf, 0, &rebuild);
 if (ret)
  return ret;

 status = myrs_get_ldev_info(cs, ldev_num, ldev_info);
 if (status != MYRS_STATUS_SUCCESS) {
  sdev_printk(KERN_INFO, sdev,
       "Failed to get device information, status 0x%02x\n",
       status);
  return -EIO;
 }

 if (rebuild && ldev_info->rbld_active) {
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Not Initiated; already in progress\n");
  return -EALREADY;
 }
 if (!rebuild && !ldev_info->rbld_active) {
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Not Cancelled; no rebuild in progress\n");
  return count;
 }

 mutex_lock(&cs->dcmd_mutex);
 cmd_blk = &cs->dcmd_blk;
 myrs_reset_cmd(cmd_blk);
 mbox = &cmd_blk->mbox;
 mbox->common.opcode = MYRS_CMD_OP_IOCTL;
 mbox->common.id = MYRS_DCMD_TAG;
 mbox->common.control.dma_ctrl_to_host = 1;
 mbox->common.control.no_autosense = 1;
 if (rebuild) {
  mbox->ldev_info.ldev.ldev_num = ldev_num;
  mbox->ldev_info.ioctl_opcode = MYRS_IOCTL_RBLD_DEVICE_START;
 } else {
  mbox->ldev_info.ldev.ldev_num = ldev_num;
  mbox->ldev_info.ioctl_opcode = MYRS_IOCTL_RBLD_DEVICE_STOP;
 }
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 mutex_unlock(&cs->dcmd_mutex);
 if (status) {
  sdev_printk(KERN_INFO, sdev,
       "Rebuild Not %s, status 0x%02x\n",
       rebuild ? "Initiated" : "Cancelled", status);
  ret = -EIO;
 } else {
  sdev_printk(KERN_INFO, sdev, "Rebuild %s\n",
       rebuild ? "Initiated" : "Cancelled");
  ret = count;
 }

 return ret;
}
