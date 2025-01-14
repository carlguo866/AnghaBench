; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_lookup_with_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_lookup_with_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.policy_work = type { i32 }
%struct.smq_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i32, i32*, i32, i32, %struct.policy_work**)* @smq_lookup_with_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smq_lookup_with_work(%struct.dm_cache_policy* %0, i32 %1, i32* %2, i32 %3, i32 %4, %struct.policy_work** %5) #0 {
  %7 = alloca %struct.dm_cache_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.policy_work**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.smq_policy*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.policy_work** %5, %struct.policy_work*** %12, align 8
  %17 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %7, align 8
  %18 = call %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy* %17)
  store %struct.smq_policy* %18, %struct.smq_policy** %16, align 8
  %19 = load %struct.smq_policy*, %struct.smq_policy** %16, align 8
  %20 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %19, i32 0, i32 0
  %21 = load i64, i64* %15, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.smq_policy*, %struct.smq_policy** %16, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.policy_work**, %struct.policy_work*** %12, align 8
  %29 = call i32 @__lookup(%struct.smq_policy* %23, i32 %24, i32* %25, i32 %26, i32 %27, %struct.policy_work** %28, i32* %14)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.smq_policy*, %struct.smq_policy** %16, align 8
  %31 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %30, i32 0, i32 0
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lookup(%struct.smq_policy*, i32, i32*, i32, i32, %struct.policy_work**, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
