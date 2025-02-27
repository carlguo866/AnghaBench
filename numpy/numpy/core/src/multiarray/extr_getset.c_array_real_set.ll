; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_real_set.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_getset.c_array_real_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_AttributeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot delete array real part\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @array_real_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_real_set(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @PyExc_AttributeError, align 4
  %13 = call i32 @PyErr_SetString(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @PyArray_ISCOMPLEX(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @_get_part(i32* %19, i32 0)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %47

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %14
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @Py_INCREF(i32* %26)
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %6, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @PyArray_FROM_O(i32* %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @Py_DECREF(i32* %36)
  store i32 -1, i32* %3, align 4
  br label %47

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @PyArray_MoveInto(i32* %39, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @Py_DECREF(i32* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @Py_DECREF(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %35, %23, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyArray_ISCOMPLEX(i32*) #1

declare dso_local i32* @_get_part(i32*, i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_FROM_O(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArray_MoveInto(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
