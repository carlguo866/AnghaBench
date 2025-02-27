; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_resume_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_resume_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"unclaimed mmio detected on resume, clearing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_resume_early(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %4 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %5 = call i64 @intel_uncore_unclaimed_mmio(%struct.intel_uncore* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %11 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %24

14:                                               ; preds = %9
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %16 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %15, i32 0, i32 1
  %17 = call i32 @fetch_and_zero(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @forcewake_early_sanitize(%struct.intel_uncore* %18, i32 %19)
  %21 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %22 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %21, i32 0, i32 0
  %23 = call i32 @iosf_mbi_register_pmic_bus_access_notifier(i32* %22)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @intel_uncore_unclaimed_mmio(%struct.intel_uncore*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i32 @fetch_and_zero(i32*) #1

declare dso_local i32 @forcewake_early_sanitize(%struct.intel_uncore*, i32) #1

declare dso_local i32 @iosf_mbi_register_pmic_bus_access_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
