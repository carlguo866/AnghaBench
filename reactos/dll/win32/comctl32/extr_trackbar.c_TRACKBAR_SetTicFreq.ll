; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_SetTicFreq.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_SetTicFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@TBS_AUTOTICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @TRACKBAR_SetTicFreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_SetTicFreq(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TBS_AUTOTICKS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 @TRACKBAR_RecalculateTics(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32 @TRACKBAR_InvalidateAll(%struct.TYPE_6__* %17)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i32 @TRACKBAR_UpdateThumb(%struct.TYPE_6__* %20)
  ret i32 0
}

declare dso_local i32 @TRACKBAR_RecalculateTics(%struct.TYPE_6__*) #1

declare dso_local i32 @TRACKBAR_InvalidateAll(%struct.TYPE_6__*) #1

declare dso_local i32 @TRACKBAR_UpdateThumb(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
