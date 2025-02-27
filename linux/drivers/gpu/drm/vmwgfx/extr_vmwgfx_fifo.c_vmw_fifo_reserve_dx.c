
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {scalar_t__ cman; } ;


 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int SVGA3D_INVALID_ID ;
 int WARN (int,char*) ;
 void* vmw_cmdbuf_reserve (scalar_t__,int ,int,int,int *) ;
 void* vmw_local_fifo_reserve (struct vmw_private*,int ) ;

void *vmw_fifo_reserve_dx(struct vmw_private *dev_priv, uint32_t bytes,
     int ctx_id)
{
 void *ret;

 if (dev_priv->cman)
  ret = vmw_cmdbuf_reserve(dev_priv->cman, bytes,
      ctx_id, 0, ((void*)0));
 else if (ctx_id == SVGA3D_INVALID_ID)
  ret = vmw_local_fifo_reserve(dev_priv, bytes);
 else {
  WARN(1, "Command buffer has not been allocated.\n");
  ret = ((void*)0);
 }
 if (IS_ERR_OR_NULL(ret))
  return ((void*)0);

 return ret;
}
