
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270_request {int dummy; } ;
struct raw3270 {int flags; struct raw3270_view* view; } ;


 int EACCES ;
 int EBUSY ;
 int RAW3270_FLAGS_FROZEN ;
 int __raw3270_start (struct raw3270*,struct raw3270_view*,struct raw3270_request*) ;
 int raw3270_state_ready (struct raw3270*) ;
 scalar_t__ test_bit (int ,int *) ;

int
raw3270_start_locked(struct raw3270_view *view, struct raw3270_request *rq)
{
 struct raw3270 *rp;
 int rc;

 rp = view->dev;
 if (!rp || rp->view != view ||
     test_bit(RAW3270_FLAGS_FROZEN, &rp->flags))
  rc = -EACCES;
 else if (!raw3270_state_ready(rp))
  rc = -EBUSY;
 else
  rc = __raw3270_start(rp, view, rq);
 return rc;
}
