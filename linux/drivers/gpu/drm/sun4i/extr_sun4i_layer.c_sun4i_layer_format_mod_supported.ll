; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layer_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layer_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.sun4i_layer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, i32, i32)* @sun4i_layer_format_mod_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_layer_format_mod_supported(%struct.drm_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sun4i_layer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %9 = call %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane* %8)
  store %struct.sun4i_layer* %9, %struct.sun4i_layer** %7, align 8
  %10 = load %struct.sun4i_layer*, %struct.sun4i_layer** %7, align 8
  %11 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_ERR_OR_NULL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @sun4i_backend_format_is_supported(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @sun4i_backend_format_is_supported(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @sun4i_frontend_format_is_supported(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local %struct.sun4i_layer* @plane_to_sun4i_layer(%struct.drm_plane*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i64 @sun4i_backend_format_is_supported(i32, i32) #1

declare dso_local i64 @sun4i_frontend_format_is_supported(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
