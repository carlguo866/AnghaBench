; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c24xx-cpufreq.c_s3c_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cpufreq_policy = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@clk_arm = common dso_local global i32 0, align 4
@cpu_cur = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ftab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @s3c_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %3 = load i32, i32* @clk_arm, align 4
  %4 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %4, i32 0, i32 2
  store i32 %3, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpu_cur, i32 0, i32 0), align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @ftab, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
