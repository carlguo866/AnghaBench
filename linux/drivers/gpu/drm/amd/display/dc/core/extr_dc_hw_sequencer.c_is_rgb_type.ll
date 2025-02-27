; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_is_rgb_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_hw_sequencer.c_is_rgb_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_XR_RGB = common dso_local global i32 0, align 4
@COLOR_SPACE_MSREF_SCRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_2020_RGB_FULLRANGE = common dso_local global i32 0, align 4
@COLOR_SPACE_ADOBERGB = common dso_local global i32 0, align 4
@COLOR_SPACE_DCIP3 = common dso_local global i32 0, align 4
@COLOR_SPACE_DOLBYVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_rgb_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rgb_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @COLOR_SPACE_XR_RGB, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @COLOR_SPACE_MSREF_SCRGB, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @COLOR_SPACE_2020_RGB_FULLRANGE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @COLOR_SPACE_ADOBERGB, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @COLOR_SPACE_DCIP3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @COLOR_SPACE_DOLBYVISION, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23, %19, %15, %11, %7, %1
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
