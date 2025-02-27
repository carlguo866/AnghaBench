; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_prepare_cursor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_prepare_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32*, i32 }

@SPI_ERROR_ARGUMENT = common dso_local global i64 0, align 8
@SPI_result = common dso_local global i64 0, align 8
@_SPI_PLAN_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SPI_prepare_cursor(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %14, %4
  %24 = load i64, i64* @SPI_ERROR_ARGUMENT, align 8
  store i64 %24, i64* @SPI_result, align 8
  store i32* null, i32** %5, align 8
  br label %47

25:                                               ; preds = %20, %17
  %26 = call i64 @_SPI_begin_call(i32 1)
  store i64 %26, i64* @SPI_result, align 8
  %27 = load i64, i64* @SPI_result, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %5, align 8
  br label %47

30:                                               ; preds = %25
  %31 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 40)
  %32 = load i32, i32* @_SPI_PLAN_MAGIC, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32* %38, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @_SPI_prepare_plan(i8* %42, %struct.TYPE_5__* %10)
  %44 = call i32* @_SPI_make_plan_non_temp(%struct.TYPE_5__* %10)
  store i32* %44, i32** %11, align 8
  %45 = call i32 @_SPI_end_call(i32 1)
  %46 = load i32*, i32** %11, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %30, %29, %23
  %48 = load i32*, i32** %5, align 8
  ret i32* %48
}

declare dso_local i64 @_SPI_begin_call(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @_SPI_prepare_plan(i8*, %struct.TYPE_5__*) #1

declare dso_local i32* @_SPI_make_plan_non_temp(%struct.TYPE_5__*) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
