; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_plane_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_plane_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G4X_WM_LEVEL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @g4x_plane_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g4x_plane_fifo_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %20 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %14
  ]

7:                                                ; preds = %2
  store i32 63, i32* %3, align 4
  br label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @G4X_WM_LEVEL_NORMAL, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 127, i32 511
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @G4X_WM_LEVEL_NORMAL, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 127, i32 0
  store i32 %19, i32* %3, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @MISSING_CASE(i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %20, %14, %8, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
