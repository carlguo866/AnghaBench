; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBForceDummyResize.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_combo.c_CBForceDummyResize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@SWP_NOMOVE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CBForceDummyResize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CBForceDummyResize(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = call i32 @CBGetTextAreaHeight(i32 %7, %struct.TYPE_7__* %8)
  %10 = call i32 (...) @COMBO_YBORDERSIZE()
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GetWindowRect(i32 %15, %struct.TYPE_6__* %3)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SWP_NOMOVE, align 4
  %27 = load i32, i32* @SWP_NOZORDER, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SWP_NOACTIVATE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @SetWindowPos(i32 %19, i32* null, i32 0, i32 0, i64 %24, i32 %25, i32 %30)
  ret void
}

declare dso_local i32 @CBGetTextAreaHeight(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @COMBO_YBORDERSIZE(...) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
