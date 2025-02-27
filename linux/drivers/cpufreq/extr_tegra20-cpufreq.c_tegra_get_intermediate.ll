; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra_get_intermediate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra_get_intermediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpufreq_policy = type { i32 }
%struct.tegra20_cpufreq = type { i32 }

@freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @tegra_get_intermediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_get_intermediate(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra20_cpufreq*, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.tegra20_cpufreq* (...) @cpufreq_get_driver_data()
  store %struct.tegra20_cpufreq* %8, %struct.tegra20_cpufreq** %6, align 8
  %9 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %10 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_get_rate(i32 %11)
  %13 = sdiv i32 %12, 1000
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @freq_table, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.tegra20_cpufreq* @cpufreq_get_driver_data(...) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
