
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct ipw_priv {int cmdlog_pos; int cmdlog_len; TYPE_2__* cmdlog; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int len; scalar_t__ param; int cmd; } ;
struct TYPE_4__ {TYPE_1__ cmd; int retcode; int jiffies; } ;


 scalar_t__ PAGE_SIZE ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ snprintf (char*,scalar_t__,char*,...) ;
 scalar_t__ snprintk_buf (char*,scalar_t__,int *,int ) ;

__attribute__((used)) static ssize_t show_cmd_log(struct device *d,
       struct device_attribute *attr, char *buf)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 u32 len = 0, i;
 if (!priv->cmdlog)
  return 0;
 for (i = (priv->cmdlog_pos + 1) % priv->cmdlog_len;
      (i != priv->cmdlog_pos) && (len < PAGE_SIZE);
      i = (i + 1) % priv->cmdlog_len) {
  len +=
      snprintf(buf + len, PAGE_SIZE - len,
        "\n%08lX%08X%08X%08X\n", priv->cmdlog[i].jiffies,
        priv->cmdlog[i].retcode, priv->cmdlog[i].cmd.cmd,
        priv->cmdlog[i].cmd.len);
  len +=
      snprintk_buf(buf + len, PAGE_SIZE - len,
     (u8 *) priv->cmdlog[i].cmd.param,
     priv->cmdlog[i].cmd.len);
  len += snprintf(buf + len, PAGE_SIZE - len, "\n");
 }
 len += snprintf(buf + len, PAGE_SIZE - len, "\n");
 return len;
}
