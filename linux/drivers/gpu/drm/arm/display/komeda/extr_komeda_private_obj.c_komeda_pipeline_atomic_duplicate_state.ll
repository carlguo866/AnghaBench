; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_pipeline_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_pipeline_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_private_state = type { i32 }
%struct.drm_private_obj = type { i32 }
%struct.komeda_pipeline_state = type { %struct.drm_private_state, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_private_state* (%struct.drm_private_obj*)* @komeda_pipeline_atomic_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_private_state* @komeda_pipeline_atomic_duplicate_state(%struct.drm_private_obj* %0) #0 {
  %2 = alloca %struct.drm_private_state*, align 8
  %3 = alloca %struct.drm_private_obj*, align 8
  %4 = alloca %struct.komeda_pipeline_state*, align 8
  store %struct.drm_private_obj* %0, %struct.drm_private_obj** %3, align 8
  %5 = load %struct.drm_private_obj*, %struct.drm_private_obj** %3, align 8
  %6 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.komeda_pipeline_state* @kmemdup(i32 %7, i32 16, i32 %8)
  store %struct.komeda_pipeline_state* %9, %struct.komeda_pipeline_state** %4, align 8
  %10 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %4, align 8
  %11 = icmp ne %struct.komeda_pipeline_state* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.drm_private_state* null, %struct.drm_private_state** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %4, align 8
  %15 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.drm_private_obj*, %struct.drm_private_obj** %3, align 8
  %17 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %4, align 8
  %18 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %17, i32 0, i32 0
  %19 = call i32 @__drm_atomic_helper_private_obj_duplicate_state(%struct.drm_private_obj* %16, %struct.drm_private_state* %18)
  %20 = load %struct.komeda_pipeline_state*, %struct.komeda_pipeline_state** %4, align 8
  %21 = getelementptr inbounds %struct.komeda_pipeline_state, %struct.komeda_pipeline_state* %20, i32 0, i32 0
  store %struct.drm_private_state* %21, %struct.drm_private_state** %2, align 8
  br label %22

22:                                               ; preds = %13, %12
  %23 = load %struct.drm_private_state*, %struct.drm_private_state** %2, align 8
  ret %struct.drm_private_state* %23
}

declare dso_local %struct.komeda_pipeline_state* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_private_obj_duplicate_state(%struct.drm_private_obj*, %struct.drm_private_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
