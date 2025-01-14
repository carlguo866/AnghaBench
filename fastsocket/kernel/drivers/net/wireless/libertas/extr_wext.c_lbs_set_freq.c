
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int lock; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct chan_freq_power {scalar_t__ channel; } ;
struct assoc_request {int channel; int flags; } ;


 int ASSOC_FLAG_CHANNEL ;
 int EINVAL ;
 int ENOMEM ;
 int LBS_DEB_WEXT ;
 struct chan_freq_power* find_cfp_by_band_and_freq (struct lbs_private*,int ,long) ;
 int lbs_cancel_association_work (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,long) ;
 struct chan_freq_power* lbs_find_cfp_by_band_and_channel (struct lbs_private*,int ,int) ;
 struct assoc_request* lbs_get_association_request (struct lbs_private*) ;
 int lbs_postpone_association_work (struct lbs_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lbs_set_freq(struct net_device *dev, struct iw_request_info *info,
    struct iw_freq *fwrq, char *extra)
{
 int ret = -EINVAL;
 struct lbs_private *priv = dev->ml_priv;
 struct chan_freq_power *cfp;
 struct assoc_request * assoc_req;

 lbs_deb_enter(LBS_DEB_WEXT);

 mutex_lock(&priv->lock);
 assoc_req = lbs_get_association_request(priv);
 if (!assoc_req) {
  ret = -ENOMEM;
  goto out;
 }


 if (fwrq->e == 1) {
  long f = fwrq->m / 100000;

  cfp = find_cfp_by_band_and_freq(priv, 0, f);
  if (!cfp) {
   lbs_deb_wext("invalid freq %ld\n", f);
   goto out;
  }

  fwrq->e = 0;
  fwrq->m = (int) cfp->channel;
 }


 if (fwrq->m > 1000 || fwrq->e > 0) {
  goto out;
 }

 cfp = lbs_find_cfp_by_band_and_channel(priv, 0, fwrq->m);
 if (!cfp) {
  goto out;
 }

 assoc_req->channel = fwrq->m;
 ret = 0;

out:
 if (ret == 0) {
  set_bit(ASSOC_FLAG_CHANNEL, &assoc_req->flags);
  lbs_postpone_association_work(priv);
 } else {
  lbs_cancel_association_work(priv);
 }
 mutex_unlock(&priv->lock);

 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
