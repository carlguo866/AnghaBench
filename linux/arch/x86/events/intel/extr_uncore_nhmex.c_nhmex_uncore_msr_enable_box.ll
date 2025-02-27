; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_uncore_msr_enable_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_uncore_msr_enable_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }

@NHMEX_W_PMON_GLOBAL_FIXED_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @nhmex_uncore_msr_enable_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_uncore_msr_enable_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %5 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %6 = call i32 @uncore_msr_box_ctl(%struct.intel_uncore_box* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @rdmsrl(i32 %10, i64 %11)
  %13 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %14 = call i64 @uncore_num_counters(%struct.intel_uncore_box* %13)
  %15 = shl i64 1, %14
  %16 = sub i64 %15, 1
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %20 = call i64 @uncore_msr_fixed_ctl(%struct.intel_uncore_box* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %9
  %23 = load i64, i64* @NHMEX_W_PMON_GLOBAL_FIXED_EN, align 8
  %24 = load i64, i64* %4, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @wrmsrl(i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @uncore_msr_box_ctl(%struct.intel_uncore_box*) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i64 @uncore_num_counters(%struct.intel_uncore_box*) #1

declare dso_local i64 @uncore_msr_fixed_ctl(%struct.intel_uncore_box*) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
