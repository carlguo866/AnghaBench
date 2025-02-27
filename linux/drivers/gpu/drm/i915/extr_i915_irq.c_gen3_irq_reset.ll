; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen3_irq_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen3_irq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen3_irq_reset(%struct.intel_uncore* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_uncore*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @intel_uncore_write(%struct.intel_uncore* %9, i32 %10, i32 -1)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %12, i32 %13)
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @intel_uncore_write(%struct.intel_uncore* %15, i32 %16, i32 0)
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @intel_uncore_write(%struct.intel_uncore* %18, i32 %19, i32 -1)
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %21, i32 %22)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @intel_uncore_write(%struct.intel_uncore* %24, i32 %25, i32 -1)
  %27 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %27, i32 %28)
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
