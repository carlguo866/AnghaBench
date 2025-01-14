
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ spi; } ;
struct TYPE_8__ {scalar_t__ state; int dying; } ;
struct TYPE_7__ {unsigned long add_time; scalar_t__ use_time; } ;
struct TYPE_6__ {long hard_add_expires_seconds; long hard_use_expires_seconds; long soft_add_expires_seconds; long soft_use_expires_seconds; } ;
struct xfrm_state {int lock; TYPE_5__ id; TYPE_3__ km; int timer; TYPE_2__ curlft; TYPE_1__ lft; } ;
struct TYPE_9__ {int km_waitq; } ;
struct net {TYPE_4__ xfrm; } ;


 long LONG_MAX ;
 scalar_t__ XFRM_STATE_ACQ ;
 scalar_t__ XFRM_STATE_DEAD ;
 scalar_t__ XFRM_STATE_EXPIRED ;
 int __xfrm_state_delete (struct xfrm_state*) ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 unsigned long get_seconds () ;
 scalar_t__ jiffies ;
 int km_state_expired (struct xfrm_state*,int,int ) ;
 scalar_t__ make_jiffies (long) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;
 int xfrm_audit_state_delete (struct xfrm_state*,int,int ,int ,int ) ;
 struct net* xs_net (struct xfrm_state*) ;

__attribute__((used)) static void xfrm_timer_handler(unsigned long data)
{
 struct xfrm_state *x = (struct xfrm_state*)data;
 struct net *net = xs_net(x);
 unsigned long now = get_seconds();
 long next = LONG_MAX;
 int warn = 0;
 int err = 0;

 spin_lock(&x->lock);
 if (x->km.state == XFRM_STATE_DEAD)
  goto out;
 if (x->km.state == XFRM_STATE_EXPIRED)
  goto expired;
 if (x->lft.hard_add_expires_seconds) {
  long tmo = x->lft.hard_add_expires_seconds +
   x->curlft.add_time - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (x->lft.hard_use_expires_seconds) {
  long tmo = x->lft.hard_use_expires_seconds +
   (x->curlft.use_time ? : now) - now;
  if (tmo <= 0)
   goto expired;
  if (tmo < next)
   next = tmo;
 }
 if (x->km.dying)
  goto resched;
 if (x->lft.soft_add_expires_seconds) {
  long tmo = x->lft.soft_add_expires_seconds +
   x->curlft.add_time - now;
  if (tmo <= 0)
   warn = 1;
  else if (tmo < next)
   next = tmo;
 }
 if (x->lft.soft_use_expires_seconds) {
  long tmo = x->lft.soft_use_expires_seconds +
   (x->curlft.use_time ? : now) - now;
  if (tmo <= 0)
   warn = 1;
  else if (tmo < next)
   next = tmo;
 }

 x->km.dying = warn;
 if (warn)
  km_state_expired(x, 0, 0);
resched:
 if (next != LONG_MAX)
  mod_timer(&x->timer, jiffies + make_jiffies(next));

 goto out;

expired:
 if (x->km.state == XFRM_STATE_ACQ && x->id.spi == 0) {
  x->km.state = XFRM_STATE_EXPIRED;
  wake_up(&net->xfrm.km_waitq);
  next = 2;
  goto resched;
 }

 err = __xfrm_state_delete(x);
 if (!err && x->id.spi)
  km_state_expired(x, 1, 0);

 xfrm_audit_state_delete(x, err ? 0 : 1,
    audit_get_loginuid(current),
    audit_get_sessionid(current), 0);

out:
 spin_unlock(&x->lock);
}
