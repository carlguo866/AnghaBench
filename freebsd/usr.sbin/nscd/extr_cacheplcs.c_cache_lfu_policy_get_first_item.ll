; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_first_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_cacheplcs.c_cache_lfu_policy_get_first_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_policy_item_ = type { i32 }
%struct.cache_policy_ = type { i32 }
%struct.cache_lfu_policy_ = type { i32* }
%struct.cache_lfu_policy_item_ = type { i32 }

@CACHELIB_MAX_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_first_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_policy_item_* @cache_lfu_policy_get_first_item(%struct.cache_policy_* %0) #0 {
  %2 = alloca %struct.cache_policy_*, align 8
  %3 = alloca %struct.cache_lfu_policy_*, align 8
  %4 = alloca %struct.cache_lfu_policy_item_*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_policy_* %0, %struct.cache_policy_** %2, align 8
  %6 = call i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_first_item)
  store %struct.cache_lfu_policy_item_* null, %struct.cache_lfu_policy_item_** %4, align 8
  %7 = load %struct.cache_policy_*, %struct.cache_policy_** %2, align 8
  %8 = bitcast %struct.cache_policy_* %7 to %struct.cache_lfu_policy_*
  store %struct.cache_lfu_policy_* %8, %struct.cache_lfu_policy_** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CACHELIB_MAX_FREQUENCY, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %3, align 8
  %15 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @TAILQ_EMPTY(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = load %struct.cache_lfu_policy_*, %struct.cache_lfu_policy_** %3, align 8
  %24 = getelementptr inbounds %struct.cache_lfu_policy_, %struct.cache_lfu_policy_* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32* %28)
  store %struct.cache_lfu_policy_item_* %29, %struct.cache_lfu_policy_item_** %4, align 8
  br label %34

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %9

34:                                               ; preds = %22, %9
  %35 = call i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*)* @cache_lfu_policy_get_first_item)
  %36 = load %struct.cache_lfu_policy_item_*, %struct.cache_lfu_policy_item_** %4, align 8
  %37 = bitcast %struct.cache_lfu_policy_item_* %36 to %struct.cache_policy_item_*
  ret %struct.cache_policy_item_* %37
}

declare dso_local i32 @TRACE_IN(%struct.cache_policy_item_* (%struct.cache_policy_*)*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.cache_lfu_policy_item_* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TRACE_OUT(%struct.cache_policy_item_* (%struct.cache_policy_*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
