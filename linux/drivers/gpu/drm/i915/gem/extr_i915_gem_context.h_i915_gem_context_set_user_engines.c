
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int flags; } ;


 int CONTEXT_USER_ENGINES ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void
i915_gem_context_set_user_engines(struct i915_gem_context *ctx)
{
 set_bit(CONTEXT_USER_ENGINES, &ctx->flags);
}
