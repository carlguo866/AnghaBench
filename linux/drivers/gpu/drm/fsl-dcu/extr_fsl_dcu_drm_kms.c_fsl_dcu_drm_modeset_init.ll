; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_kms.c_fsl_dcu_drm_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_kms.c_fsl_dcu_drm_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dcu_drm_device = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i64 }

@fsl_dcu_drm_mode_config_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_dcu_drm_modeset_init(%struct.fsl_dcu_drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_dcu_drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_dcu_drm_device* %0, %struct.fsl_dcu_drm_device** %3, align 8
  %5 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = call i32 @drm_mode_config_init(%struct.TYPE_7__* %7)
  %9 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 2031, i32* %23, align 8
  %24 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 2047, i32* %28, align 4
  %29 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32* @fsl_dcu_drm_mode_config_funcs, i32** %33, align 8
  %34 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %35 = call i32 @fsl_dcu_drm_crtc_create(%struct.fsl_dcu_drm_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %62

39:                                               ; preds = %1
  %40 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %41 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %42 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %41, i32 0, i32 1
  %43 = call i32 @fsl_dcu_drm_encoder_create(%struct.fsl_dcu_drm_device* %40, i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %62

47:                                               ; preds = %39
  %48 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %49 = call i32 @fsl_dcu_create_outputs(%struct.fsl_dcu_drm_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @drm_mode_config_reset(%struct.TYPE_7__* %56)
  %58 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %59 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = call i32 @drm_kms_helper_poll_init(%struct.TYPE_7__* %60)
  store i32 0, i32* %2, align 4
  br label %68

62:                                               ; preds = %52, %46, %38
  %63 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %3, align 8
  %64 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i32 @drm_mode_config_cleanup(%struct.TYPE_7__* %65)
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %53
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_7__*) #1

declare dso_local i32 @fsl_dcu_drm_crtc_create(%struct.fsl_dcu_drm_device*) #1

declare dso_local i32 @fsl_dcu_drm_encoder_create(%struct.fsl_dcu_drm_device*, i32*) #1

declare dso_local i32 @fsl_dcu_create_outputs(%struct.fsl_dcu_drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
