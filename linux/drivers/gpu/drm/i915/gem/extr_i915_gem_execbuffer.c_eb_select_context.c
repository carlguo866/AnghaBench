
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_gem_context {int user_flags; scalar_t__ vm; } ;
struct i915_execbuffer {int context_flags; int invalid_flags; struct i915_gem_context* gem_context; TYPE_2__* args; TYPE_1__* file; } ;
struct TYPE_4__ {int rsvd1; } ;
struct TYPE_3__ {int driver_priv; } ;


 int ENOENT ;
 int EXEC_OBJECT_NEEDS_GTT ;
 int UCONTEXT_NO_ZEROMAP ;
 int __EXEC_OBJECT_NEEDS_BIAS ;
 struct i915_gem_context* i915_gem_context_lookup (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int eb_select_context(struct i915_execbuffer *eb)
{
 struct i915_gem_context *ctx;

 ctx = i915_gem_context_lookup(eb->file->driver_priv, eb->args->rsvd1);
 if (unlikely(!ctx))
  return -ENOENT;

 eb->gem_context = ctx;
 if (ctx->vm)
  eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;

 eb->context_flags = 0;
 if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
  eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;

 return 0;
}
