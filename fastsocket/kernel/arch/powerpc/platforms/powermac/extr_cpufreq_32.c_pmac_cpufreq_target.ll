; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_32.c_pmac_cpufreq_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_cpufreq_32.c_pmac_cpufreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32 }

@pmac_cpu_freqs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cur_freq = common dso_local global i64 0, align 8
@ppc_proc_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @pmac_cpufreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmac_cpufreq_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %11 = load i32, i32* @pmac_cpu_freqs, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %10, i32 %11, i32 %12, i32 %13, i32* %8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @do_set_cpu_speed(i32 %20, i32 1)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @cur_freq, align 8
  %23 = mul i64 %22, 1000
  store i64 %23, i64* @ppc_proc_freq, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32, i32, i32*) #1

declare dso_local i32 @do_set_cpu_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
