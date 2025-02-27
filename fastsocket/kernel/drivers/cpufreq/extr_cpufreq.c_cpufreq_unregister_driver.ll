; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_driver = type { i32 }

@cpufreq_driver = common dso_local global %struct.cpufreq_driver* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unregistering driver %s\0A\00", align 1
@cpu_sysdev_class = common dso_local global i32 0, align 4
@cpufreq_sysdev_driver = common dso_local global i32 0, align 4
@cpufreq_cpu_notifier = common dso_local global i32 0, align 4
@cpufreq_driver_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_unregister_driver(%struct.cpufreq_driver* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_driver*, align 8
  %4 = alloca i64, align 8
  store %struct.cpufreq_driver* %0, %struct.cpufreq_driver** %3, align 8
  %5 = call i32 (...) @cpufreq_debug_disable_ratelimit()
  %6 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %7 = icmp ne %struct.cpufreq_driver* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %10 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %11 = icmp ne %struct.cpufreq_driver* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %1
  %13 = call i32 (...) @cpufreq_debug_enable_ratelimit()
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.cpufreq_driver*, %struct.cpufreq_driver** %3, align 8
  %18 = getelementptr inbounds %struct.cpufreq_driver, %struct.cpufreq_driver* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @sysdev_driver_unregister(i32* @cpu_sysdev_class, i32* @cpufreq_sysdev_driver)
  %22 = call i32 @unregister_hotcpu_notifier(i32* @cpufreq_cpu_notifier)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @write_lock_irqsave(i32* @cpufreq_driver_lock, i64 %23)
  store %struct.cpufreq_driver* null, %struct.cpufreq_driver** @cpufreq_driver, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @write_unlock_irqrestore(i32* @cpufreq_driver_lock, i64 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @cpufreq_debug_disable_ratelimit(...) #1

declare dso_local i32 @cpufreq_debug_enable_ratelimit(...) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @sysdev_driver_unregister(i32*, i32*) #1

declare dso_local i32 @unregister_hotcpu_notifier(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
