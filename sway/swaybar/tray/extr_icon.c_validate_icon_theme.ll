; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_validate_icon_theme.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_validate_icon_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icon_theme = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icon_theme*)* @validate_icon_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_icon_theme(%struct.icon_theme* %0) #0 {
  %2 = alloca %struct.icon_theme*, align 8
  store %struct.icon_theme* %0, %struct.icon_theme** %2, align 8
  %3 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %4 = icmp ne %struct.icon_theme* %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %7 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %12 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.icon_theme*, %struct.icon_theme** %2, align 8
  %17 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10, %5, %1
  %21 = phi i1 [ false, %10 ], [ false, %5 ], [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
