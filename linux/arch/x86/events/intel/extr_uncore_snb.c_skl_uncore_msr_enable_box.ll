; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_skl_uncore_msr_enable_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_skl_uncore_msr_enable_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }

@SKL_UNC_PERF_GLOBAL_CTL = common dso_local global i32 0, align 4
@SNB_UNC_GLOBAL_CTL_EN = common dso_local global i32 0, align 4
@SKL_UNC_GLOBAL_CTL_CORE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @skl_uncore_msr_enable_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_uncore_msr_enable_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %3 = load i32, i32* @SKL_UNC_PERF_GLOBAL_CTL, align 4
  %4 = load i32, i32* @SNB_UNC_GLOBAL_CTL_EN, align 4
  %5 = load i32, i32* @SKL_UNC_GLOBAL_CTL_CORE_ALL, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @wrmsrl(i32 %3, i32 %6)
  ret void
}

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
