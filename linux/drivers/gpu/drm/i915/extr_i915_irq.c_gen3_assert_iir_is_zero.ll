; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen3_assert_iir_is_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen3_assert_iir_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Interrupt register 0x%x is not zero: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*, i32)* @gen3_assert_iir_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen3_assert_iir_is_zero(%struct.intel_uncore* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @intel_uncore_read(%struct.intel_uncore* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @i915_mmio_reg_offset(i32 %13)
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15)
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @intel_uncore_write(%struct.intel_uncore* %17, i32 %18, i32 -1)
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %20, i32 %21)
  %23 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @intel_uncore_write(%struct.intel_uncore* %23, i32 %24, i32 -1)
  %26 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %26, i32 %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
