; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_busy_pid_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_intel_pstate.c_intel_pstate_busy_pid_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*)* @intel_pstate_busy_pid_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_busy_pid_reset(%struct.cpudata* %0) #0 {
  %2 = alloca %struct.cpudata*, align 8
  store %struct.cpudata* %0, %struct.cpudata** %2, align 8
  %3 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %4 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %3, i32 0, i32 1
  %5 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %6 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pid_p_gain_set(i32* %4, i32 %9)
  %11 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %12 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %11, i32 0, i32 1
  %13 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %14 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pid_d_gain_set(i32* %12, i32 %17)
  %19 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %20 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %19, i32 0, i32 1
  %21 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %22 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pid_i_gain_set(i32* %20, i32 %25)
  %27 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %28 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %27, i32 0, i32 1
  %29 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %30 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %35 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pid_reset(i32* %28, i32 %33, i32 100, i32 %38, i32 0)
  ret void
}

declare dso_local i32 @pid_p_gain_set(i32*, i32) #1

declare dso_local i32 @pid_d_gain_set(i32*, i32) #1

declare dso_local i32 @pid_i_gain_set(i32*, i32) #1

declare dso_local i32 @pid_reset(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
