
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ disabled; } ;
struct atmel_private {int rts_threshold; } ;


 int EINPROGRESS ;
 int EINVAL ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_set_rts(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *vwrq,
    char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 int rthr = vwrq->value;

 if (vwrq->disabled)
  rthr = 2347;
 if ((rthr < 0) || (rthr > 2347)) {
  return -EINVAL;
 }
 priv->rts_threshold = rthr;

 return -EINPROGRESS;
}
