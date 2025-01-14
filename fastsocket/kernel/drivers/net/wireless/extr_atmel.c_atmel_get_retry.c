
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; scalar_t__ value; scalar_t__ disabled; } ;
struct atmel_private {scalar_t__ long_retry; scalar_t__ short_retry; } ;


 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_retry(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *vwrq,
      char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);

 vwrq->disabled = 0;


 if (vwrq->flags & IW_RETRY_LONG) {
  vwrq->flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
  vwrq->value = priv->long_retry;
 } else {
  vwrq->flags = IW_RETRY_LIMIT;
  vwrq->value = priv->short_retry;
  if (priv->long_retry != priv->short_retry)
   vwrq->flags |= IW_RETRY_SHORT;
 }

 return 0;
}
