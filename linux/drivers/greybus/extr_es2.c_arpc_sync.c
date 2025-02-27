
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct es2_ap_dev {TYPE_2__* usb_dev; int arpc_lock; } ;
struct arpc {TYPE_1__* resp; int response_received; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int result; } ;


 int ENOMEM ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int arpc_add (struct es2_ap_dev*,struct arpc*) ;
 struct arpc* arpc_alloc (void*,size_t,int ) ;
 int arpc_del (struct es2_ap_dev*,struct arpc*) ;
 int arpc_free (struct arpc*) ;
 int arpc_send (struct es2_ap_dev*,struct arpc*,unsigned int) ;
 int dev_err (int *,char*,int) ;
 int msecs_to_jiffies (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int arpc_sync(struct es2_ap_dev *es2, u8 type, void *payload,
       size_t size, int *result, unsigned int timeout)
{
 struct arpc *rpc;
 unsigned long flags;
 int retval;

 if (result)
  *result = 0;

 rpc = arpc_alloc(payload, size, type);
 if (!rpc)
  return -ENOMEM;

 spin_lock_irqsave(&es2->arpc_lock, flags);
 arpc_add(es2, rpc);
 spin_unlock_irqrestore(&es2->arpc_lock, flags);

 retval = arpc_send(es2, rpc, timeout);
 if (retval)
  goto out_arpc_del;

 retval = wait_for_completion_interruptible_timeout(
      &rpc->response_received,
      msecs_to_jiffies(timeout));
 if (retval <= 0) {
  if (!retval)
   retval = -ETIMEDOUT;
  goto out_arpc_del;
 }

 if (rpc->resp->result) {
  retval = -EREMOTEIO;
  if (result)
   *result = rpc->resp->result;
 } else {
  retval = 0;
 }

out_arpc_del:
 spin_lock_irqsave(&es2->arpc_lock, flags);
 arpc_del(es2, rpc);
 spin_unlock_irqrestore(&es2->arpc_lock, flags);
 arpc_free(rpc);

 if (retval < 0 && retval != -EREMOTEIO) {
  dev_err(&es2->usb_dev->dev,
   "failed to execute ARPC: %d\n", retval);
 }

 return retval;
}
