; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_update_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.cpudata*, i32)* }
%struct.cpudata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MSR_IA32_PERF_CTL = common dso_local global i32 0, align 4
@pstate_funcs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudata*, i32)* @intel_pstate_update_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_update_pstate(%struct.cpudata* %0, i32 %1) #0 {
  %3 = alloca %struct.cpudata*, align 8
  %4 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %7 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %23

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %15 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @MSR_IA32_PERF_CTL, align 4
  %18 = load i32 (%struct.cpudata*, i32)*, i32 (%struct.cpudata*, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pstate_funcs, i32 0, i32 0), align 8
  %19 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 %18(%struct.cpudata* %19, i32 %20)
  %22 = call i32 @wrmsrl(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
