; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_tv_create_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_tv_create_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_sdvo_connector = type { i32, i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_sdvo_tv_format = type { i32 }

@SDVO_CMD_GET_SUPPORTED_TV_FORMATS = common dso_local global i32 0, align 4
@TV_FORMAT_NUM = common dso_local global i32 0, align 4
@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@tv_format_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, i32)* @intel_sdvo_tv_create_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_tv_create_property(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca %struct.intel_sdvo_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.intel_sdvo_tv_format, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %13 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %8, align 8
  %17 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @intel_sdvo_set_target_output(%struct.intel_sdvo* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

22:                                               ; preds = %3
  %23 = call i32 @BUILD_BUG_ON(i32 1)
  %24 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %25 = load i32, i32* @SDVO_CMD_GET_SUPPORTED_TV_FORMATS, align 4
  %26 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %24, i32 %25, %struct.intel_sdvo_tv_format* %9, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %122

29:                                               ; preds = %22
  %30 = call i32 @min(i32 4, i32 4)
  %31 = call i32 @memcpy(i32* %10, %struct.intel_sdvo_tv_format* %9, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %122

35:                                               ; preds = %29
  %36 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %37 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %60, %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TV_FORMAT_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %51 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %54 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32 %49, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %65 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %66 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %67 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @drm_property_create(%struct.drm_device* %64, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %71 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %73 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %122

77:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %102, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %81 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %78
  %85 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %86 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** @tv_format_names, align 8
  %91 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %92 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %90, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @drm_property_add_enum(i32 %87, i32 %88, i32 %89, i32 %100)
  br label %102

102:                                              ; preds = %84
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %78

105:                                              ; preds = %78
  %106 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %107 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %113 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %115 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %6, align 8
  %119 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @drm_object_attach_property(i32* %117, i32 %120, i32 0)
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %105, %76, %34, %28, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @intel_sdvo_set_target_output(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_tv_format*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.intel_sdvo_tv_format*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(i32, i32, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
