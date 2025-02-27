; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_wrap_transfer_function_one_to_n.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_wrap_transfer_function_one_to_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32*, i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }

@NPY_FAIL = common dso_local global i32 0, align 4
@_one_to_n_data_free = common dso_local global i32 0, align 4
@_one_to_n_data_clone = common dso_local global i32 0, align 4
@_strided_to_strided_one_to_n = common dso_local global i32 0, align 4
@_strided_to_strided_one_to_n_with_finish = common dso_local global i32 0, align 4
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*, i8*, i32**, i32**)* @wrap_transfer_function_one_to_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_transfer_function_one_to_n(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i32** %6, i32** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32** %6, i32*** %16, align 8
  store i32** %7, i32*** %17, align 8
  %19 = call %struct.TYPE_5__* @PyArray_malloc(i32 64)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = call i32 (...) @PyErr_NoMemory()
  %24 = load i32, i32* @NPY_FAIL, align 4
  store i32 %24, i32* %9, align 4
  br label %61

25:                                               ; preds = %8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32* @_one_to_n_data_free, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* @_one_to_n_data_clone, i32** %31, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %25
  %53 = load i32**, i32*** %16, align 8
  store i32* @_strided_to_strided_one_to_n, i32** %53, align 8
  br label %56

54:                                               ; preds = %25
  %55 = load i32**, i32*** %16, align 8
  store i32* @_strided_to_strided_one_to_n_with_finish, i32** %55, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %58 = bitcast %struct.TYPE_5__* %57 to i32*
  %59 = load i32**, i32*** %17, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %22
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_5__* @PyArray_malloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
