; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_monitors.c__LocalGetMonitorLevel1.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/printing/providers/localspl/extr_monitors.c__LocalGetMonitorLevel1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@dwMonitorInfo1Offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i32*, i32*)* @_LocalGetMonitorLevel1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_LocalGetMonitorLevel1(%struct.TYPE_3__* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @wcslen(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 4, %23
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %24
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  br label %47

30:                                               ; preds = %4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @dwMonitorInfo1Offsets, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PackStrings(i32* %35, i32 %38, i32 %39, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %30, %13
  ret void
}

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @PackStrings(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
