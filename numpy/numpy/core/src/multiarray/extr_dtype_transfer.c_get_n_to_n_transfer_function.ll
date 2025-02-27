; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_n_to_n_transfer_function.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c_get_n_to_n_transfer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@NPY_SUCCEED = common dso_local global i64 0, align 8
@NPY_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32**, i32**, i32*)* @get_n_to_n_transfer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_n_to_n_transfer_function(i32 %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, %struct.TYPE_6__* %4, i32 %5, i32 %6, i32** %7, i32** %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32** %7, i32*** %19, align 8
  store i32** %8, i32*** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load i32*, i32** %21, align 8
  %35 = call i64 @PyArray_GetDTypeTransferFunction(i32 %24, i32 %27, i32 %30, %struct.TYPE_6__* %31, %struct.TYPE_6__* %32, i32 %33, i32** %22, i32** %23, i32* %34)
  %36 = load i64, i64* @NPY_SUCCEED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %10
  %39 = load i32, i32* @NPY_FAIL, align 4
  store i32 %39, i32* %11, align 4
  br label %64

40:                                               ; preds = %10
  %41 = load i32*, i32** %22, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32**, i32*** %19, align 8
  %53 = load i32**, i32*** %20, align 8
  %54 = call i64 @wrap_transfer_function_n_to_n(i32* %41, i32* %42, i32 %43, i32 %44, i32 %47, i32 %50, i32 %51, i32** %52, i32** %53)
  %55 = load i64, i64* @NPY_SUCCEED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load i32*, i32** %23, align 8
  %59 = call i32 @NPY_AUXDATA_FREE(i32* %58)
  %60 = load i32, i32* @NPY_FAIL, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %40
  %62 = load i64, i64* @NPY_SUCCEED, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %61, %57, %38
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i64 @PyArray_GetDTypeTransferFunction(i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32**, i32**, i32*) #1

declare dso_local i64 @wrap_transfer_function_n_to_n(i32*, i32*, i32, i32, i32, i32, i32, i32**, i32**) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
