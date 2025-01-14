
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int dev; } ;
struct cros_ec_command {scalar_t__ result; } ;


 scalar_t__ EC_RES_SUCCESS ;
 int EPROTO ;
 int cros_ec_cmd_xfer (struct cros_ec_device*,struct cros_ec_command*) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_err (int ,char*,int) ;

int cros_ec_cmd_xfer_status(struct cros_ec_device *ec_dev,
       struct cros_ec_command *msg)
{
 int ret;

 ret = cros_ec_cmd_xfer(ec_dev, msg);
 if (ret < 0) {
  dev_err(ec_dev->dev, "Command xfer error (err:%d)\n", ret);
 } else if (msg->result != EC_RES_SUCCESS) {
  dev_dbg(ec_dev->dev, "Command result (err: %d)\n", msg->result);
  return -EPROTO;
 }

 return ret;
}
