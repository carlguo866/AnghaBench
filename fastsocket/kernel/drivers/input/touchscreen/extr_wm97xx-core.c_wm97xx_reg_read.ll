; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm97xx_reg_read(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %7 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %12 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %18, align 8
  %20 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 %19(%struct.TYPE_6__* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
