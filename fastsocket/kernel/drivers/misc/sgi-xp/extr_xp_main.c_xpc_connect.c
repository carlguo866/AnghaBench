
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xpc_channel_func ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct xpc_registration {int mutex; int * func; void* key; scalar_t__ idle_limit; scalar_t__ assigned_limit; scalar_t__ nentries; scalar_t__ entry_size; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* connect ) (int) ;} ;


 int DBUG_ON (int) ;
 int XPC_MAX_NCHANNELS ;
 scalar_t__ XPC_MSG_MAX_SIZE ;
 scalar_t__ XPC_MSG_SIZE (scalar_t__) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int) ;
 int xpAlreadyRegistered ;
 int xpInterrupted ;
 int xpPayloadTooBig ;
 int xpSuccess ;
 TYPE_1__ xpc_interface ;
 struct xpc_registration* xpc_registrations ;

enum xp_retval
xpc_connect(int ch_number, xpc_channel_func func, void *key, u16 payload_size,
     u16 nentries, u32 assigned_limit, u32 idle_limit)
{
 struct xpc_registration *registration;

 DBUG_ON(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);
 DBUG_ON(payload_size == 0 || nentries == 0);
 DBUG_ON(func == ((void*)0));
 DBUG_ON(assigned_limit == 0 || idle_limit > assigned_limit);

 if (XPC_MSG_SIZE(payload_size) > XPC_MSG_MAX_SIZE)
  return xpPayloadTooBig;

 registration = &xpc_registrations[ch_number];

 if (mutex_lock_interruptible(&registration->mutex) != 0)
  return xpInterrupted;


 if (registration->func != ((void*)0)) {
  mutex_unlock(&registration->mutex);
  return xpAlreadyRegistered;
 }


 registration->entry_size = XPC_MSG_SIZE(payload_size);
 registration->nentries = nentries;
 registration->assigned_limit = assigned_limit;
 registration->idle_limit = idle_limit;
 registration->key = key;
 registration->func = func;

 mutex_unlock(&registration->mutex);

 xpc_interface.connect(ch_number);

 return xpSuccess;
}
