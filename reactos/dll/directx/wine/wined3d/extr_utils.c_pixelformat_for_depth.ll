; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_pixelformat_for_depth.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_pixelformat_for_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WINED3DFMT_P8_UINT = common dso_local global i32 0, align 4
@WINED3DFMT_B5G5R5X1_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B5G6R5_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_B8G8R8X8_UNORM = common dso_local global i32 0, align 4
@WINED3DFMT_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pixelformat_for_depth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 8, label %5
    i32 15, label %7
    i32 16, label %9
    i32 24, label %11
    i32 32, label %13
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @WINED3DFMT_P8_UINT, align 4
  store i32 %6, i32* %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @WINED3DFMT_B5G5R5X1_UNORM, align 4
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @WINED3DFMT_B5G6R5_UNORM, align 4
  store i32 %10, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @WINED3DFMT_B8G8R8X8_UNORM, align 4
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @WINED3DFMT_B8G8R8X8_UNORM, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @WINED3DFMT_UNKNOWN, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %7, %5
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
