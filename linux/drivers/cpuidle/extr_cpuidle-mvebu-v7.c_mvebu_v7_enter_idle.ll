; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-mvebu-v7.c_mvebu_v7_enter_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-mvebu-v7.c_mvebu_v7_enter_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MVEBU_V7_FLAG_DEEP_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @mvebu_v7_enter_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_v7_enter_idle(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @cpu_pm_enter()
  %11 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %12 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MVEBU_V7_FLAG_DEEP_IDLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mvebu_v7_cpu_suspend(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = call i32 (...) @cpu_pm_exit()
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @cpu_pm_enter(...) #1

declare dso_local i32 @mvebu_v7_cpu_suspend(i32) #1

declare dso_local i32 @cpu_pm_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
