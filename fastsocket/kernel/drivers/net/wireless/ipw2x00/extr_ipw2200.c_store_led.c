
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CFG_NO_LED ;
 int IPW_DEBUG_INFO (char*) ;
 int IPW_DEBUG_LED (char*) ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int ipw_led_init (struct ipw_priv*) ;
 int ipw_led_shutdown (struct ipw_priv*) ;

__attribute__((used)) static ssize_t store_led(struct device *d, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct ipw_priv *priv = dev_get_drvdata(d);

 IPW_DEBUG_INFO("enter\n");

 if (count == 0)
  return 0;

 if (*buf == 0) {
  IPW_DEBUG_LED("Disabling LED control.\n");
  priv->config |= CFG_NO_LED;
  ipw_led_shutdown(priv);
 } else {
  IPW_DEBUG_LED("Enabling LED control.\n");
  priv->config &= ~CFG_NO_LED;
  ipw_led_init(priv);
 }

 IPW_DEBUG_INFO("exit\n");
 return count;
}
