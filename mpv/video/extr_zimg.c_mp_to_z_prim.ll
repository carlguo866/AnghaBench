; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_to_z_prim.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_mp_to_z_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIMG_PRIMARIES_ST170_M = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_BT470_BG = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_BT709 = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_BT2020 = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_BT470_M = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_ST428 = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_ST431_2 = common dso_local global i32 0, align 4
@ZIMG_PRIMARIES_ST432_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mp_to_z_prim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_to_z_prim(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 136, label %5
    i32 135, label %7
    i32 134, label %9
    i32 138, label %11
    i32 137, label %13
    i32 133, label %15
    i32 132, label %17
    i32 131, label %19
    i32 139, label %21
    i32 140, label %21
    i32 130, label %21
    i32 128, label %21
    i32 129, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ZIMG_PRIMARIES_ST170_M, align 4
  store i32 %6, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @ZIMG_PRIMARIES_BT470_BG, align 4
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @ZIMG_PRIMARIES_BT709, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @ZIMG_PRIMARIES_BT2020, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @ZIMG_PRIMARIES_BT470_M, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @ZIMG_PRIMARIES_ST428, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @ZIMG_PRIMARIES_ST431_2, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @ZIMG_PRIMARIES_ST432_1, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1, %1, %1, %1, %1
  br label %22

22:                                               ; preds = %1, %21
  %23 = load i32, i32* @ZIMG_PRIMARIES_BT709, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19, %17, %15, %13, %11, %9, %7, %5
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
