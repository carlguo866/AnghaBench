; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy.c_dm_cache_policy_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { %struct.dm_cache_policy_type* }
%struct.dm_cache_policy_type = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dm_cache_policy_get_name(%struct.dm_cache_policy* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dm_cache_policy*, align 8
  %4 = alloca %struct.dm_cache_policy_type*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %3, align 8
  %5 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %3, align 8
  %6 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %5, i32 0, i32 0
  %7 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %6, align 8
  store %struct.dm_cache_policy_type* %7, %struct.dm_cache_policy_type** %4, align 8
  %8 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %9 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %14 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.dm_cache_policy_type*, %struct.dm_cache_policy_type** %4, align 8
  %20 = getelementptr inbounds %struct.dm_cache_policy_type, %struct.dm_cache_policy_type* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
