; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_plane_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.intel_plane = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ilk_update_plane = common dso_local global i32 0, align 4
@ilk_disable_plane = common dso_local global i32 0, align 4
@ilk_update_colorkey = common dso_local global i32 0, align 4
@ilk_get_colorkey = common dso_local global i32 0, align 4
@snb_plane_formats = common dso_local global i32* null, align 8
@ilk_plane_formats = common dso_local global i32* null, align 8
@ivb_update_plane = common dso_local global i32 0, align 4
@ivb_disable_plane = common dso_local global i32 0, align 4
@ivb_update_colorkey = common dso_local global i32 0, align 4
@ivb_get_colorkey = common dso_local global i32 0, align 4
@intel_plane_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_plane_init(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_plane*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %119

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.intel_plane* @kzalloc(i32 32, i32 %20)
  store %struct.intel_plane* %21, %struct.intel_plane** %6, align 8
  %22 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %23 = icmp ne %struct.intel_plane* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %19
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %93 [
    i32 5, label %32
    i32 6, label %32
    i32 7, label %61
  ]

32:                                               ; preds = %27, %27
  %33 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %34 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %36 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %35, i32 0, i32 1
  store i32 16, i32* %36, align 4
  %37 = load i32, i32* @ilk_update_plane, align 4
  %38 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %39 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ilk_disable_plane, align 4
  %41 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %42 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ilk_update_colorkey, align 4
  %44 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %45 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ilk_get_colorkey, align 4
  %47 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %48 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = call i32 @IS_GEN6(%struct.drm_device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load i32*, i32** @snb_plane_formats, align 8
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** @snb_plane_formats, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  store i32 %55, i32* %9, align 4
  br label %60

56:                                               ; preds = %32
  %57 = load i32*, i32** @ilk_plane_formats, align 8
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** @ilk_plane_formats, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %98

61:                                               ; preds = %27
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i32 @IS_HASWELL(%struct.drm_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = call i32 @IS_VALLEYVIEW(%struct.drm_device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %61
  %70 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %71 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %74 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %77 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %76, i32 0, i32 1
  store i32 2, i32* %77, align 4
  %78 = load i32, i32* @ivb_update_plane, align 4
  %79 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %80 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @ivb_disable_plane, align 4
  %82 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %83 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ivb_update_colorkey, align 4
  %85 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %86 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ivb_get_colorkey, align 4
  %88 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %89 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** @snb_plane_formats, align 8
  store i32* %90, i32** %8, align 8
  %91 = load i32*, i32** @snb_plane_formats, align 8
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  store i32 %92, i32* %9, align 4
  br label %98

93:                                               ; preds = %27
  %94 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %95 = call i32 @kfree(%struct.intel_plane* %94)
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %119

98:                                               ; preds = %75, %60
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %101 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 1, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %7, align 8
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %107 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %106, i32 0, i32 3
  %108 = load i64, i64* %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @drm_plane_init(%struct.drm_device* %105, i32* %107, i64 %108, i32* @intel_plane_funcs, i32* %109, i32 %110, i32 0)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load %struct.intel_plane*, %struct.intel_plane** %6, align 8
  %116 = call i32 @kfree(%struct.intel_plane* %115)
  br label %117

117:                                              ; preds = %114, %98
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %93, %24, %16
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local %struct.intel_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.intel_plane*) #1

declare dso_local i32 @drm_plane_init(%struct.drm_device*, i32*, i64, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
