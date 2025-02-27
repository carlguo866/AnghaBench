; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_ucl_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c_ucl_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unhandled object type\00", align 1
@SchemaError = common dso_local global i32 0, align 4
@Py_RETURN_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @ucl_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_validate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucl_schema_error, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @PyArg_ParseTuple(i32* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %7, i32** %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @PyExc_TypeError, align 4
  %17 = call i32 @PyErr_SetString(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %47

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @_iterate_python(i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %47

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @_iterate_python(i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32* null, i32** %3, align 8
  br label %47

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @ucl_object_validate(i32* %31, i32* %32, %struct.ucl_schema_error* %11)
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @ucl_object_unref(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @ucl_object_unref(i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @SchemaError, align 4
  %42 = getelementptr inbounds %struct.ucl_schema_error, %struct.ucl_schema_error* %11, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PyErr_SetString(i32 %41, i8* %43)
  store i32* null, i32** %3, align 8
  br label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @Py_RETURN_TRUE, align 4
  br label %47

47:                                               ; preds = %45, %40, %29, %23, %15
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**, i32**) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @_iterate_python(i32*) #1

declare dso_local i32 @ucl_object_validate(i32*, i32*, %struct.ucl_schema_error*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
