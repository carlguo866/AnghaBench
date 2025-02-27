
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {scalar_t__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cdc_ncm_ctx {int timer_interval; } ;
typedef int ssize_t ;


 scalar_t__ NSEC_PER_USEC ;
 struct usbnet* netdev_priv (int ) ;
 int sprintf (char*,char*,int) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t cdc_ncm_show_tx_timer_usecs(struct device *d, struct device_attribute *attr, char *buf)
{
 struct usbnet *dev = netdev_priv(to_net_dev(d));
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];

 return sprintf(buf, "%u\n", ctx->timer_interval / (u32)NSEC_PER_USEC);
}
