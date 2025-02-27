; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_color_mgmt.c_komeda_select_yuv2rgb_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_color_mgmt.c_komeda_select_yuv2rgb_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i64 0, align 8
@yuv2rgb_bt709_narrow = common dso_local global i32* null, align 8
@yuv2rgb_bt709_wide = common dso_local global i32* null, align 8
@yuv2rgb_bt601_narrow = common dso_local global i32* null, align 8
@yuv2rgb_bt601_wide = common dso_local global i32* null, align 8
@yuv2rgb_bt2020 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @komeda_select_yuv2rgb_coeffs(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  switch i64 %11, label %32 [
    i64 128, label %12
    i64 129, label %21
    i64 130, label %30
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32*, i32** @yuv2rgb_bt709_narrow, align 8
  br label %19

17:                                               ; preds = %12
  %18 = load i32*, i32** @yuv2rgb_bt709_wide, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32* [ %16, %15 ], [ %18, %17 ]
  store i32* %20, i32** %6, align 8
  br label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** @yuv2rgb_bt601_narrow, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** @yuv2rgb_bt601_wide, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32* [ %25, %24 ], [ %27, %26 ]
  store i32* %29, i32** %6, align 8
  br label %33

30:                                               ; preds = %2
  %31 = load i32*, i32** @yuv2rgb_bt2020, align 8
  store i32* %31, i32** %6, align 8
  br label %33

32:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  br label %33

33:                                               ; preds = %32, %30, %28, %19
  %34 = load i32*, i32** %6, align 8
  ret i32* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
