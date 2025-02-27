; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_execute_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@_SPI_PLAN_MAGIC = common dso_local global i64 0, align 8
@SPI_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@SPI_ERROR_PARAM = common dso_local global i32 0, align 4
@InvalidSnapshot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_execute_plan(%struct.TYPE_4__* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @_SPI_PLAN_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %11, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %5
  %25 = load i32, i32* @SPI_ERROR_ARGUMENT, align 4
  store i32 %25, i32* %6, align 4
  br label %60

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @SPI_ERROR_PARAM, align 4
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %31, %26
  %37 = call i32 @_SPI_begin_call(i32 1)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %60

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @_SPI_convert_params(i64 %46, i32 %49, i32* %50, i8* %51)
  %53 = load i32, i32* @InvalidSnapshot, align 4
  %54 = load i32, i32* @InvalidSnapshot, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @_SPI_execute_plan(%struct.TYPE_4__* %43, i32 %52, i32 %53, i32 %54, i32 %55, i32 1, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = call i32 @_SPI_end_call(i32 1)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %42, %40, %34, %24
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @_SPI_begin_call(i32) #1

declare dso_local i32 @_SPI_execute_plan(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @_SPI_convert_params(i64, i32, i32*, i8*) #1

declare dso_local i32 @_SPI_end_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
