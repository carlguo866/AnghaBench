
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilco_ec_message {int request_size; int response_size; struct get_ec_info_resp* response_data; struct get_ec_info_req* request_data; int type; } ;
struct wilco_ec_device {int dummy; } ;
struct get_ec_info_resp {int value; } ;
struct get_ec_info_req {int op; int cmd; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int resp ;
typedef int req ;
typedef enum get_ec_info_op { ____Placeholder_get_ec_info_op } get_ec_info_op ;


 int CMD_EC_INFO ;
 int PAGE_SIZE ;
 int WILCO_EC_MSG_LEGACY ;
 struct wilco_ec_device* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int,char*) ;
 int wilco_ec_mailbox (struct wilco_ec_device*,struct wilco_ec_message*) ;

__attribute__((used)) static ssize_t get_info(struct device *dev, char *buf, enum get_ec_info_op op)
{
 struct wilco_ec_device *ec = dev_get_drvdata(dev);
 struct get_ec_info_req req = { .cmd = CMD_EC_INFO, .op = op };
 struct get_ec_info_resp resp;
 int ret;

 struct wilco_ec_message msg = {
  .type = WILCO_EC_MSG_LEGACY,
  .request_data = &req,
  .request_size = sizeof(req),
  .response_data = &resp,
  .response_size = sizeof(resp),
 };

 ret = wilco_ec_mailbox(ec, &msg);
 if (ret < 0)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%.*s\n", (int)sizeof(resp.value),
    (char *)&resp.value);
}
