; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_translateCursorShape.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_translateCursorShape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XC_left_ptr = common dso_local global i32 0, align 4
@XC_xterm = common dso_local global i32 0, align 4
@XC_crosshair = common dso_local global i32 0, align 4
@XC_hand1 = common dso_local global i32 0, align 4
@XC_sb_h_double_arrow = common dso_local global i32 0, align 4
@XC_sb_v_double_arrow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @translateCursorShape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translateCursorShape(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 133, label %5
    i32 129, label %7
    i32 132, label %9
    i32 131, label %11
    i32 130, label %13
    i32 128, label %15
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @XC_left_ptr, align 4
  store i32 %6, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  %8 = load i32, i32* @XC_xterm, align 4
  store i32 %8, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @XC_crosshair, align 4
  store i32 %10, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @XC_hand1, align 4
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @XC_sb_h_double_arrow, align 4
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @XC_sb_v_double_arrow, align 4
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %15, %13, %11, %9, %7, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
