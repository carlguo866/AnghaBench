; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_ChangeSensitivity.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_ChangeSensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mouseSensitivity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_ChangeSensitivity(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %18 [
    i32 0, label %4
    i32 1, label %11
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @mouseSensitivity, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @mouseSensitivity, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @mouseSensitivity, align 4
  br label %10

10:                                               ; preds = %7, %4
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @mouseSensitivity, align 4
  %13 = icmp slt i32 %12, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @mouseSensitivity, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @mouseSensitivity, align 4
  br label %17

17:                                               ; preds = %14, %11
  br label %18

18:                                               ; preds = %1, %17, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
