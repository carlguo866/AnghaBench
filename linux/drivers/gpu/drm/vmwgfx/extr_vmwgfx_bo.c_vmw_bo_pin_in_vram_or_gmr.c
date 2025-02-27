
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int reservation_sem; } ;
struct ttm_buffer_object {int mem; } ;
struct vmw_buffer_object {scalar_t__ pin_count; struct ttm_buffer_object base; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 scalar_t__ likely (int) ;
 int ttm_bo_mem_compat (int *,int *,int *) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;
 int ttm_bo_validate (struct ttm_buffer_object*,int *,struct ttm_operation_ctx*) ;
 int ttm_write_lock (int *,int) ;
 int ttm_write_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_pin_reserved (struct vmw_buffer_object*,int) ;
 int vmw_execbuf_release_pinned_bo (struct vmw_private*) ;
 int vmw_vram_gmr_placement ;
 int vmw_vram_placement ;

int vmw_bo_pin_in_vram_or_gmr(struct vmw_private *dev_priv,
         struct vmw_buffer_object *buf,
         bool interruptible)
{
 struct ttm_operation_ctx ctx = {interruptible, 0 };
 struct ttm_buffer_object *bo = &buf->base;
 int ret;
 uint32_t new_flags;

 ret = ttm_write_lock(&dev_priv->reservation_sem, interruptible);
 if (unlikely(ret != 0))
  return ret;

 vmw_execbuf_release_pinned_bo(dev_priv);

 ret = ttm_bo_reserve(bo, interruptible, 0, ((void*)0));
 if (unlikely(ret != 0))
  goto err;

 if (buf->pin_count > 0) {
  ret = ttm_bo_mem_compat(&vmw_vram_gmr_placement, &bo->mem,
     &new_flags) == 1 ? 0 : -EINVAL;
  goto out_unreserve;
 }

 ret = ttm_bo_validate(bo, &vmw_vram_gmr_placement, &ctx);
 if (likely(ret == 0) || ret == -ERESTARTSYS)
  goto out_unreserve;

 ret = ttm_bo_validate(bo, &vmw_vram_placement, &ctx);

out_unreserve:
 if (!ret)
  vmw_bo_pin_reserved(buf, 1);

 ttm_bo_unreserve(bo);
err:
 ttm_write_unlock(&dev_priv->reservation_sem);
 return ret;
}
