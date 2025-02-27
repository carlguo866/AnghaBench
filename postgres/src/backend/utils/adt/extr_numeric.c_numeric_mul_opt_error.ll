; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_mul_opt_error.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_numeric_mul_opt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@const_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @numeric_mul_opt_error(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @NUMERIC_IS_NAN(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NUMERIC_IS_NAN(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = call i32 @make_result(i32* @const_nan)
  store i32 %20, i32* %4, align 4
  br label %37

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @init_var_from_num(i32 %22, %struct.TYPE_9__* %8)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @init_var_from_num(i32 %24, %struct.TYPE_9__* %9)
  %26 = call i32 @init_var(%struct.TYPE_9__* %10)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %28, %30
  %32 = call i32 @mul_var(%struct.TYPE_9__* %8, %struct.TYPE_9__* %9, %struct.TYPE_9__* %10, i64 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @make_result_opt_error(%struct.TYPE_9__* %10, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = call i32 @free_var(%struct.TYPE_9__* %10)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %21, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @NUMERIC_IS_NAN(i32) #1

declare dso_local i32 @make_result(i32*) #1

declare dso_local i32 @init_var_from_num(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @init_var(%struct.TYPE_9__*) #1

declare dso_local i32 @mul_var(%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @make_result_opt_error(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @free_var(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
