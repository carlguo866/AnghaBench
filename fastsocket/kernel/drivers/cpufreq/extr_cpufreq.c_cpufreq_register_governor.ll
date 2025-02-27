; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_governor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_register_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_governor = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpufreq_governor_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@cpufreq_governor_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_register_governor(%struct.cpufreq_governor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_governor*, align 8
  %4 = alloca i32, align 4
  store %struct.cpufreq_governor* %0, %struct.cpufreq_governor** %3, align 8
  %5 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %3, align 8
  %6 = icmp ne %struct.cpufreq_governor* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @cpufreq_governor_mutex)
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %3, align 8
  %15 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @__find_governor(i32 %16)
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  %20 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %20, i32 0, i32 0
  %22 = call i32 @list_add(i32* %21, i32* @cpufreq_governor_list)
  br label %23

23:                                               ; preds = %19, %10
  %24 = call i32 @mutex_unlock(i32* @cpufreq_governor_mutex)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @__find_governor(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
