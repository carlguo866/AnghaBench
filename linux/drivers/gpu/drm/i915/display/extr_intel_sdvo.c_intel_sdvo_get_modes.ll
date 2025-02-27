; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_sdvo_connector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_sdvo_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector* %4)
  store %struct.intel_sdvo_connector* %5, %struct.intel_sdvo_connector** %3, align 8
  %6 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %7 = call i64 @IS_TV(%struct.intel_sdvo_connector* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = call i32 @intel_sdvo_get_tv_modes(%struct.drm_connector* %10)
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %14 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %18 = call i32 @intel_sdvo_get_lvds_modes(%struct.drm_connector* %17)
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %21 = call i32 @intel_sdvo_get_ddc_modes(%struct.drm_connector* %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %9
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(%struct.drm_connector*) #1

declare dso_local i64 @IS_TV(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_get_tv_modes(%struct.drm_connector*) #1

declare dso_local i64 @IS_LVDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_get_lvds_modes(%struct.drm_connector*) #1

declare dso_local i32 @intel_sdvo_get_ddc_modes(%struct.drm_connector*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
