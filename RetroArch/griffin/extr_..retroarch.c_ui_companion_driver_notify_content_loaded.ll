; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_ui_companion_driver_notify_content_loaded.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_ui_companion_driver_notify_content_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }

@ui_companion = common dso_local global %struct.TYPE_3__* null, align 8
@ui_companion_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_companion_driver_notify_content_loaded() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ui_companion, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load i32, i32* @ui_companion_data, align 4
  %15 = call i32 %13(i32 %14)
  br label %16

16:                                               ; preds = %10, %5, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
