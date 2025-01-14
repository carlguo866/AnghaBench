
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {unsigned int read_bytes; int index; scalar_t__ status; int * addr; int dev; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ LTESR_CC ;
 int dev_err (int ,char*,int,...) ;
 scalar_t__ const in_8 (int *) ;

__attribute__((used)) static int fsl_elbc_verify_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_elbc_mtd *priv = chip->priv;
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;
 int i;

 if (len < 0) {
  dev_err(ctrl->dev, "write_buf of %d bytes", len);
  return -EINVAL;
 }

 if ((unsigned int)len > ctrl->read_bytes - ctrl->index) {
  dev_err(ctrl->dev,
          "verify_buf beyond end of buffer "
          "(%d requested, %u available)\n",
          len, ctrl->read_bytes - ctrl->index);

  ctrl->index = ctrl->read_bytes;
  return -EINVAL;
 }

 for (i = 0; i < len; i++)
  if (in_8(&ctrl->addr[ctrl->index + i]) != buf[i])
   break;

 ctrl->index += len;
 return i == len && ctrl->status == LTESR_CC ? 0 : -EIO;
}
