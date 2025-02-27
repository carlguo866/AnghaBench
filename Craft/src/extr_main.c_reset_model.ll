; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_reset_model.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_reset_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i32, i64, i32 }

@g = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_CHUNKS = common dso_local global i32 0, align 4
@MAX_PLAYERS = common dso_local global i32 0, align 4
@MAX_TEXT_LENGTH = common dso_local global i32 0, align 4
@MAX_MESSAGES = common dso_local global i32 0, align 4
@DAY_LENGTH = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_model() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 13
  %3 = load i32, i32* %2, align 8
  %4 = load i32, i32* @MAX_CHUNKS, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 4, %5
  %7 = trunc i64 %6 to i32
  %8 = call i32 @memset(i32 %3, i32 0, i32 %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 12
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MAX_PLAYERS, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(i32 %13, i32 0, i32 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 9
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MAX_TEXT_LENGTH, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 1, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32 %31, i32 0, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MAX_MESSAGES, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 1, %43
  %45 = load i32, i32* @MAX_TEXT_LENGTH, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32 %41, i32 0, i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load double, double* @DAY_LENGTH, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store double %52, double* %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = fdiv double %57, 3.000000e+00
  %59 = call i32 @glfwSetTime(double %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @glfwSetTime(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
