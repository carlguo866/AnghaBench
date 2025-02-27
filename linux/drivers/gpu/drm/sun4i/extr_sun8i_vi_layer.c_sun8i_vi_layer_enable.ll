; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_layer.c_sun8i_vi_layer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%sabling VI channel %d overlay %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun8i_mixer*, i32, i32, i32, i32, i32)* @sun8i_vi_layer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_vi_layer_enable(%struct.sun8i_mixer* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sun8i_mixer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %17 = call i32 @sun8i_blender_base(%struct.sun8i_mixer* %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @sun8i_channel_base(%struct.sun8i_mixer* %18, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, align 4
  store i32 %31, i32* %13, align 4
  br label %33

32:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %35 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32 %38, i32 %39)
  %41 = load i32, i32* @SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @regmap_update_bits(i32 %37, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46, %33
  %51 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %52 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @SUN8I_MIXER_BLEND_PIPE_CTL(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @SUN8I_MIXER_BLEND_PIPE_CTL_EN(i32 %57)
  %59 = call i32 @regmap_update_bits(i32 %54, i32 %56, i32 %58, i32 0)
  %60 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %61 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @SUN8I_MIXER_BLEND_ROUTE(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(i32 %66)
  %68 = call i32 @regmap_update_bits(i32 %63, i32 %65, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %50, %46
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @SUN8I_MIXER_BLEND_PIPE_CTL_EN(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %76 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @SUN8I_MIXER_BLEND_PIPE_CTL(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @regmap_update_bits(i32 %78, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(i32 %85)
  %87 = shl i32 %84, %86
  store i32 %87, i32* %13, align 4
  %88 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %7, align 8
  %89 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @SUN8I_MIXER_BLEND_ROUTE(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @regmap_update_bits(i32 %91, i32 %93, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @sun8i_blender_base(%struct.sun8i_mixer*) #1

declare dso_local i32 @sun8i_channel_base(%struct.sun8i_mixer*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_CHAN_VI_LAYER_ATTR(i32, i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_PIPE_CTL(i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_PIPE_CTL_EN(i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ROUTE(i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ROUTE_PIPE_MSK(i32) #1

declare dso_local i32 @SUN8I_MIXER_BLEND_ROUTE_PIPE_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
