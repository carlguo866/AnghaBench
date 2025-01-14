
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ipw2100_priv {int dump_raw; struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int IPW_DEBUG_INFO (char*,int ) ;
 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 int ipw2100_snapshot_free (struct ipw2100_priv*) ;
 char tolower (char const) ;

__attribute__((used)) static ssize_t store_memory(struct device *d, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct ipw2100_priv *priv = dev_get_drvdata(d);
 struct net_device *dev = priv->net_dev;
 const char *p = buf;

 (void)dev;

 if (count < 1)
  return count;

 if (p[0] == '1' ||
     (count >= 2 && tolower(p[0]) == 'o' && tolower(p[1]) == 'n')) {
  IPW_DEBUG_INFO("%s: Setting memory dump to RAW mode.\n",
          dev->name);
  priv->dump_raw = 1;

 } else if (p[0] == '0' || (count >= 2 && tolower(p[0]) == 'o' &&
       tolower(p[1]) == 'f')) {
  IPW_DEBUG_INFO("%s: Setting memory dump to HEX mode.\n",
          dev->name);
  priv->dump_raw = 0;

 } else if (tolower(p[0]) == 'r') {
  IPW_DEBUG_INFO("%s: Resetting firmware snapshot.\n", dev->name);
  ipw2100_snapshot_free(priv);

 } else
  IPW_DEBUG_INFO("%s: Usage: 0|on = HEX, 1|off = RAW, "
          "reset = clear memory snapshot\n", dev->name);

 return count;
}
