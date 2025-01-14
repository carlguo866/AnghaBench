
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {int kernel; TYPE_4__* afu; } ;
struct TYPE_10__ {int (* link_ok ) (TYPE_3__*,TYPE_4__*) ;} ;
struct TYPE_9__ {scalar_t__ current_mode; TYPE_3__* adapter; } ;
struct TYPE_8__ {TYPE_2__* native; } ;
struct TYPE_7__ {TYPE_1__* sl_ops; } ;
struct TYPE_6__ {int (* attach_afu_directed ) (struct cxl_context*,int ,int ) ;int (* attach_dedicated_process ) (struct cxl_context*,int ,int ) ;} ;


 scalar_t__ CXL_MODE_DEDICATED ;
 scalar_t__ CXL_MODE_DIRECTED ;
 int EINVAL ;
 int EIO ;
 int WARN (int,char*) ;
 TYPE_5__* cxl_ops ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;
 int stub2 (struct cxl_context*,int ,int ) ;
 int stub3 (struct cxl_context*,int ,int ) ;

__attribute__((used)) static int native_attach_process(struct cxl_context *ctx, bool kernel,
    u64 wed, u64 amr)
{
 if (!cxl_ops->link_ok(ctx->afu->adapter, ctx->afu)) {
  WARN(1, "Device link is down, refusing to attach process!\n");
  return -EIO;
 }

 ctx->kernel = kernel;
 if ((ctx->afu->current_mode == CXL_MODE_DIRECTED) &&
     (ctx->afu->adapter->native->sl_ops->attach_afu_directed))
  return ctx->afu->adapter->native->sl_ops->attach_afu_directed(ctx, wed, amr);

 if ((ctx->afu->current_mode == CXL_MODE_DEDICATED) &&
     (ctx->afu->adapter->native->sl_ops->attach_dedicated_process))
  return ctx->afu->adapter->native->sl_ops->attach_dedicated_process(ctx, wed, amr);

 return -EINVAL;
}
