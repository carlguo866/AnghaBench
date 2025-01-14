; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pipe_config_infoframe_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pipe_config_infoframe_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.hdmi_infoframe = type { i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_KMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fastset mismatch in %s infoframe\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"mismatch in %s infoframe\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i8*, %union.hdmi_infoframe*, %union.hdmi_infoframe*)* @pipe_config_infoframe_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_config_infoframe_mismatch(%struct.drm_i915_private* %0, i32 %1, i8* %2, %union.hdmi_infoframe* %3, %union.hdmi_infoframe* %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %union.hdmi_infoframe*, align 8
  %10 = alloca %union.hdmi_infoframe*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %union.hdmi_infoframe* %3, %union.hdmi_infoframe** %9, align 8
  store %union.hdmi_infoframe* %4, %union.hdmi_infoframe** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = load i32, i32* @drm_debug, align 4
  %15 = load i32, i32* @DRM_UT_KMS, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %60

19:                                               ; preds = %13
  %20 = load i32, i32* @DRM_UT_KMS, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i32, i8*, ...) @drm_dbg(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @DRM_UT_KMS, align 4
  %24 = call i32 (i32, i8*, ...) @drm_dbg(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @KERN_DEBUG, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %9, align 8
  %31 = call i32 @hdmi_infoframe_log(i32 %25, i32 %29, %union.hdmi_infoframe* %30)
  %32 = load i32, i32* @DRM_UT_KMS, align 4
  %33 = call i32 (i32, i8*, ...) @drm_dbg(i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @KERN_DEBUG, align 4
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %10, align 8
  %40 = call i32 @hdmi_infoframe_log(i32 %34, i32 %38, %union.hdmi_infoframe* %39)
  br label %60

41:                                               ; preds = %5
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8*, ...) @drm_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = call i32 (i8*, ...) @drm_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %9, align 8
  %51 = call i32 @hdmi_infoframe_log(i32 %45, i32 %49, %union.hdmi_infoframe* %50)
  %52 = call i32 (i8*, ...) @drm_err(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %10, align 8
  %59 = call i32 @hdmi_infoframe_log(i32 %53, i32 %57, %union.hdmi_infoframe* %58)
  br label %60

60:                                               ; preds = %18, %41, %19
  ret void
}

declare dso_local i32 @drm_dbg(i32, i8*, ...) #1

declare dso_local i32 @hdmi_infoframe_log(i32, i32, %union.hdmi_infoframe*) #1

declare dso_local i32 @drm_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
