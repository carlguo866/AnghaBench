; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_tuple_all_none.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_tuple_all_none.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i64 0, align 8
@NPY_FALSE = common dso_local global i32 0, align 4
@NPY_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tuple_all_none to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuple_all_none(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @PyTuple_GET_SIZE(i32* %7)
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @PyTuple_GET_ITEM(i32* %11, i64 %12)
  %14 = load i64, i64* @Py_None, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @NPY_FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* @NPY_TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i64 @PyTuple_GET_ITEM(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
