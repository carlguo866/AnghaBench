; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_list_set_selection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_list_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*)* }

@menu_driver_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@menu_userdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_driver_list_set_selection(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32*)*, i32 (i32, i32*)** %12, align 8
  %14 = icmp ne i32 (i32, i32*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %7
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %10
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32*)*, i32 (i32, i32*)** %18, align 8
  %20 = load i32, i32* @menu_userdata, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 %19(i32 %20, i32* %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %15, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
