; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_intel_attach_force_audio_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_device.c_cdv_intel_attach_force_audio_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.drm_property* }
%struct.drm_property = type { i32 }

@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@force_audio_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdv_intel_attach_force_audio_property(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  store %struct.drm_psb_private* %12, %struct.drm_psb_private** %4, align 8
  %13 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %13, i32 0, i32 0
  %15 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  store %struct.drm_property* %15, %struct.drm_property** %5, align 8
  %16 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %17 = icmp eq %struct.drm_property* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %21 = load i32*, i32** @force_audio_names, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  store %struct.drm_property* %23, %struct.drm_property** %5, align 8
  %24 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %25 = icmp eq %struct.drm_property* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %55

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** @force_audio_names, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32*, i32** @force_audio_names, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_property_add_enum(%struct.drm_property* %34, i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %48 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %49 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %48, i32 0, i32 0
  store %struct.drm_property* %47, %struct.drm_property** %49, align 8
  br label %50

50:                                               ; preds = %46, %1
  %51 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 0
  %53 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %54 = call i32 @drm_object_attach_property(i32* %52, %struct.drm_property* %53, i32 0)
  br label %55

55:                                               ; preds = %50, %26
  ret void
}

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
