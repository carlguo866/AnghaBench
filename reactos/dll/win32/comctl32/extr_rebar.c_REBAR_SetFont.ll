; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @REBAR_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_SetFont(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32* @REBAR_GetBand(%struct.TYPE_6__* %17, i64 %18)
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @REBAR_ValidateBand(%struct.TYPE_6__* %20, i32* %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @REBAR_Layout(%struct.TYPE_6__* %27)
  ret i32 0
}

declare dso_local i32* @REBAR_GetBand(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @REBAR_ValidateBand(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @REBAR_Layout(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
