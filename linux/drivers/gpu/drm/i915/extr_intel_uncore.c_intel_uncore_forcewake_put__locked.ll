; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_put__locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_forcewake_put__locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_forcewake_put__locked(%struct.intel_uncore* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %6 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %9 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @__intel_uncore_forcewake_put(%struct.intel_uncore* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @__intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
