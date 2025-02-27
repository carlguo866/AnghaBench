; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_backlight.c_nvidia_bl_get_level_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_backlight.c_nvidia_bl_get_level_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32 }
%struct.fb_info = type { i32* }

@MIN_LEVEL = common dso_local global i32 0, align 4
@LEVEL_STEP = common dso_local global i32 0, align 4
@MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvidia_par*, i32)* @nvidia_bl_get_level_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_bl_get_level_brightness(%struct.nvidia_par* %0, i32 %1) #0 {
  %3 = alloca %struct.nvidia_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.nvidia_par* %0, %struct.nvidia_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvidia_par*, %struct.nvidia_par** %3, align 8
  %8 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fb_info* @pci_get_drvdata(i32 %9)
  store %struct.fb_info* %10, %struct.fb_info** %5, align 8
  %11 = load i32, i32* @MIN_LEVEL, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LEVEL_STEP, align 4
  %20 = mul nsw i32 %18, %19
  %21 = add nsw i32 %11, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MIN_LEVEL, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @MIN_LEVEL, align 4
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_LEVEL, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @MAX_LEVEL, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.fb_info* @pci_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
