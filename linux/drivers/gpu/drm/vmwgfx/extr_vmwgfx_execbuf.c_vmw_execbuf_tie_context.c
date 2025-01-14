
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vmw_sw_context {int man; int dx_ctx_node; TYPE_1__* fp; int ctx; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct TYPE_2__ {int tfile; } ;


 scalar_t__ IS_ERR (struct vmw_resource*) ;
 int PTR_ERR (struct vmw_resource*) ;
 scalar_t__ SVGA3D_INVALID_ID ;
 int VMW_DEBUG_USER (char*,unsigned int) ;
 int VMW_RES_DIRTY_SET ;
 scalar_t__ unlikely (int) ;
 int user_context_converter ;
 int vmw_context_res_man (struct vmw_resource*) ;
 int vmw_execbuf_info_from_res (struct vmw_sw_context*,struct vmw_resource*) ;
 int vmw_execbuf_res_noref_val_add (struct vmw_sw_context*,struct vmw_resource*,int ) ;
 unsigned int vmw_execbuf_res_size (struct vmw_private*,int ) ;
 int vmw_res_dx_context ;
 struct vmw_resource* vmw_user_resource_noref_lookup_handle (struct vmw_private*,int ,scalar_t__,int ) ;
 int vmw_validation_preload_res (int ,unsigned int) ;

__attribute__((used)) static int vmw_execbuf_tie_context(struct vmw_private *dev_priv,
       struct vmw_sw_context *sw_context,
       uint32_t handle)
{
 struct vmw_resource *res;
 int ret;
 unsigned int size;

 if (handle == SVGA3D_INVALID_ID)
  return 0;

 size = vmw_execbuf_res_size(dev_priv, vmw_res_dx_context);
 ret = vmw_validation_preload_res(sw_context->ctx, size);
 if (ret)
  return ret;

 res = vmw_user_resource_noref_lookup_handle
  (dev_priv, sw_context->fp->tfile, handle,
   user_context_converter);
 if (IS_ERR(res)) {
  VMW_DEBUG_USER("Could not find or user DX context 0x%08x.\n",
          (unsigned int) handle);
  return PTR_ERR(res);
 }

 ret = vmw_execbuf_res_noref_val_add(sw_context, res, VMW_RES_DIRTY_SET);
 if (unlikely(ret != 0))
  return ret;

 sw_context->dx_ctx_node = vmw_execbuf_info_from_res(sw_context, res);
 sw_context->man = vmw_context_res_man(res);

 return 0;
}
