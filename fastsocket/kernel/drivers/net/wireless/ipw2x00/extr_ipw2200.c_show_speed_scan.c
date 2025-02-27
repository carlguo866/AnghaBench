
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; scalar_t__* speed_scan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int CFG_SPEED_SCAN ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_speed_scan(struct device *d, struct device_attribute *attr,
          char *buf)
{
 struct ipw_priv *priv = dev_get_drvdata(d);
 int pos = 0, len = 0;
 if (priv->config & CFG_SPEED_SCAN) {
  while (priv->speed_scan[pos] != 0)
   len += sprintf(&buf[len], "%d ",
           priv->speed_scan[pos++]);
  return len + sprintf(&buf[len], "\n");
 }

 return sprintf(buf, "0\n");
}
