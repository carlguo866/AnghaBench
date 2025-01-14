
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;
struct i915_active_request {int dummy; } ;


 struct i915_request* __i915_active_request_get_rcu (struct i915_active_request const*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline struct i915_request *
i915_active_request_get_unlocked(const struct i915_active_request *active)
{
 struct i915_request *request;

 rcu_read_lock();
 request = __i915_active_request_get_rcu(active);
 rcu_read_unlock();

 return request;
}
