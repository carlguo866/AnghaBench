; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_create_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_create_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_item_ = type { i32 }
%struct.cache_lfu_policy_item_ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_policy_item_* ()* @cache_lfu_policy_create_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_policy_item_* @cache_lfu_policy_create_item() #0 {
  %1 = alloca %struct.cache_lfu_policy_item_*, align 8
  %2 = call i32 @TRACE_IN(%struct.cache_policy_item_* (...)* bitcast (%struct.cache_policy_item_* ()* @cache_lfu_policy_create_item to %struct.cache_policy_item_* (...)*))
  %3 = call %struct.cache_lfu_policy_item_* @calloc(i32 1, i32 4)
  store %struct.cache_lfu_policy_item_* %3, %struct.cache_lfu_policy_item_** %1, align 8
  %4 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %1, align 8
  %5 = icmp ne %struct.cache_lfu_policy_item_* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @TRACE_OUT(%struct.cache_policy_item_* (...)* bitcast (%struct.cache_policy_item_* ()* @cache_lfu_policy_create_item to %struct.cache_policy_item_* (...)*))
  %9 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %1, align 8
  %10 = bitcast %struct.cache_lfu_policy_item_* %9 to %struct.cache_policy_item_*
  ret %struct.cache_policy_item_* %10
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_item_* (...)*) #1

declare dso_local %struct.cache_lfu_policy_item_* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_item_* (...)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
